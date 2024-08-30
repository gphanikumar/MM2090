#!/bin/bash

# Create a temporary Python script
TMP_PYTHON_SCRIPT=$(mktemp)
cat <<EOF >"$TMP_PYTHON_SCRIPT"
class FSM:
    #constructor
    def __init__(self,regexp):
        #contains the number of states(each character is a state)

        ##regular expression
        self.regexp=regexp
        #the current state (string)
        self.current_state = regexp[0]
        self.prev_state = self.current_state
        #the total number of states
        self.states = len(regexp)
        #idx of the state
        self.state_number=0
    

    #supported wildcards
    wildcards = ['+', '.', '*']

    #function to handle state_transitions
    def state_transition(self,input):
        takePrev=False ##to indicate match is tiill previous element
        Matched = False
        Reset = False

        # print(self.current_state)

        if (self.current_state not in self.wildcards):
            if (input == self.regexp[self.state_number]):
                #checking if it is eligible for a state transition
                self.state_number+=1
                if (self.state_number==self.states):
                    #if succesfully matched
                    Matched = True
                    #resetting the index of the state, and current state back to null
                    self.state_number=0
                    self.current_state=self.regexp[0]
                    return Matched, Reset, takePrev
                #updating the current state
                self.prev_state=self.current_state
                self.current_state=self.regexp[self.state_number]
            else:

                if (self.regexp[self.state_number+1]=='*'):
                    Matched=True
                    takePrev=True
                    self.current_state=self.regexp[0]
                    self.prev_state=self.current_state
                    self.state_number=0
                    return Matched, Reset, takePrev

                Reset = True
                self.current_state=self.regexp[0]
                self.state_number=0
                self.prev_state=self.current_state
                return Matched, Reset, takePrev

        elif (self.current_state=="+" or self.current_state=="*"):
            ##what to do if currently we have hit a *, previous state becomes important
            #if the input is same as the previous state, we need not do anything,
            #if the input is different, we need to check the next state, (in the regex)
            # if the next state is same, we can move on
            if (self.prev_state!=input):
                self.state_number+=1

                ##are we done?(with the regex)
                if (self.state_number==self.states):
                    self.current_state=self.regexp[0]
                    self.prev_state=self.current_state
                    self.state_number=0
                    if (self.regexp[0]==input):
                        self.state_number=1
                        self.current_state=self.regexp[1]
                        self.prev_state=self.regexp[0]
                    Matched=True
                    takePrev = True
                    return Matched, Reset, takePrev
                if (input == self.regexp[self.state_number]):

                    self.state_number+=1

                    if (self.state_number==self.states):
                        Matched=True
                        self.state_number=0
                        self.current_state=self.regexp[0]
                        self.prev_state=self.current_state
                        return Matched, Reset, takePrev

                    self.current_state=self.regexp[self.state_number]
                    self.prev_state=self.current_state
                else:
                    self.prev_state=self.current_state
                    self.current_state=self.regexp[self.state_number]
                    Matched=True
                    takePrev=True
                    self.state_number=0
                    self.current_state=self.regexp[0]
                    self.prev_state=self.current_state
                    return Matched,Reset,takePrev

        elif(self.current_state=="."):
             self.state_number+=1
             if (self.state_number==self.states):
                 #if succesfully matched
                 Matched = True
                 #resetting the index of the state, and current state back to null
                 self.state_number=0
                 self.current_state=self.regexp[0]
                 return Matched, Reset, takePrev
             #updating the current state
             self.prev_state=self.current_state
             self.current_state=self.regexp[self.state_number]
        return Matched, Reset, takePrev


# def color_string(input_string, color_indexes):
#     colored_string = ''
#     prev_end = 0
#     for start, stop in color_indexes:
#         colored_string += input_string[prev_end:start]  # Add the uncolored part before the colored part
#         colored_string += '\033[91m'  # ANSI escape code for red color (you can adjust color as needed)
#         colored_string += input_string[start:stop+1]  # Add the colored part
#         colored_string += '\033[0m'  # Reset color to default
#         prev_end = stop+1

#     colored_string += input_string[prev_end:]  # Add the remaining uncolored part of the string
#     return colored_string


def color_string(input_string):
    colored_string = ''
    colored_string += '\033[91m'  # ANSI escape code for red color (you can adjust color as needed)
    colored_string += input_string  # Add the colored part
    colored_string += '\033[0m'  # Reset color to default   
    return colored_string

#taking my inputs
input_string = input("Enter the input string ")
regex_string = input("Enter the regular expression input ")

#calling my class
fsm = FSM(regex_string)
# print(fsm.states)
initial_match_idx=0


matches = []


for i in range(len(input_string)):
    # print(input_string[i],fsm.current_state, fsm.prev_state, fsm.state_number)
    Matched, Reset, takePrev = fsm.state_transition(input_string[i])
    if Reset == True:
        initial_match_idx=i+1
    if Matched == True:
        if takePrev==False:
            matches.append((initial_match_idx, i))
            # print("Matcheda", initial_match_idx, i)
            # print(color_string(input_string,matches))
            initial_match_idx=i+1
        else:
            matches.append((initial_match_idx, i-1))
            # print("Matchedb", initial_match_idx, i-1)
            # print(color_string(input_string,matches))
            initial_match_idx=i

    if (i==len(input_string)-1):
        if fsm.current_state=="*" or fsm.regexp[fsm.state_number+1]=="*":
            matches.append((initial_match_idx, i))
            # print("Matchedc", initial_match_idx, i)
            # print(color_string(input_string,matches))

color_indices=[]
for i in matches:
    for j in range(i[0],i[1]+1):
        color_indices.append(j)


for i in range(len(input_string)):
    if i in color_indices:
        print(color_string(input_string[i]), end='')
    else:
        print(input_string[i], end='')

print()
EOF

# Run the temporary Python script
python3 "$TMP_PYTHON_SCRIPT"

# Remove the temporary Python script
rm "$TMP_PYTHON_SCRIPT"
