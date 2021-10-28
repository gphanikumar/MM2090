import pandas
import dataframe_image
import sys
import os

class table():
	
    def __init__(self, file_name):
        self.commands = self.getCommands(file_name)
        self.TITLE, self.ROWS, self.SLOTS, self.TIME = self.getOperation()
        self.contents = self.makeTable()
        self.table = pandas.DataFrame(self.contents)
        self.name = self.getArguments(self.TITLE[0])[0]

    def getCommands(self, file_name):
        # This functions takes in the file and returns a list containg every line of the file
        commands = []
        with open(file_name) as file:
            for line in file:
                commands.append(line.strip())
        return commands

    def getOperation(self):
        # This function segregates commands into different lists
        TITLE = []; ROWS = []; SLOTS = []; TIME = []; 
        for line in self.commands:
            if line.find("is-a")!=-1:
                TITLE.append(line)
            elif line.find("has-row")!=-1:
                ROWS.append(line)
            elif line.find("has-slot")!=-1:
                SLOTS.append(line)
            elif line.find("starts-at")!=-1 or line.find("ends-at")!=-1:
                TIME.append(line)
        return TITLE, ROWS, SLOTS, TIME
    
    def findOperation(self, line):
        # This function identifies the type of command
        if line.find("is-a")!=-1:
            return ("is-a")
        elif line.find("has-row")!=-1:
            return ("has-row")
        elif line.find("has-slot")!=-1:
            return ("has-slot")
        elif line.find("starts-at")!=-1:
            return ("starts-at")
        elif line.find("ends-at")!=-1:
            return ("ends-at") 

    def getArguments(self, line):
        # This function returns the arguments for each command
        return [ entry.strip() for entry in line.split(self.findOperation(line)) ]
    
    def getColumns(self):
        # This function returns a dict with the columns of the table as keys 
        header = ["Row"] + [str(time) for time in range(8,17+1)]
        columns = dict( [column, None] for column in header )
        return columns

    def makeTime(self):
        # This function returns a dict with Start and End as keys
        return {"Start": None, "End": None}

    def makeRows(self):
        # This function parses through ROWS and returns the names of the rows
        rows = []
        for line in self.ROWS:
            if self.findOperation(line)=="has-row":
                rows.append(self.getArguments(line)[1])
        return rows

    def getSlots(self):
        # This function parses through SLOTS and maps each slot to the corresponding row
        rows = dict([[row, []] for row in self.makeRows()])
        for line in self.SLOTS:
            if self.findOperation(line)=="has-slot":
                row, slot = self.getArguments(line)
                rows[row].append(slot)
        return dict(rows)

    def getTime(self):
        # This function parses through TIME and updates the start and end times for each slot
        data = []
        for line in self.SLOTS:
            if self.findOperation(line)=="has-slot":
                row, slot = self.getArguments(line)
                data.append([slot, self.makeTime()])
        data = dict(data)       
        for line in self.TIME:
            if self.findOperation(line)=="starts-at":
                operation = "Start"
            elif self.findOperation(line)=="ends-at":
                operation = "End"
            slot, time = self.getArguments(line)
            data[slot][operation]=time      
        return data

    def makeTable(self):
        # This function returns a list of dicts containing the data for each column row-wise
        slots = self.getSlots()
        time = self.getTime()
        table = []
        for row in slots.keys():
            data = self.getColumns()
            data["Row"]=row
            for i in range(len(slots[row])):
                slot = slots[row][i]
                start = time[slot]["Start"]
                start = int(start.split(':')[0])
                end = time[slot]["End"]
                end = int(end.split(':')[0])
                for column in range(start, end+1):
                    data[str(column)]=slot
            table.append(data)
        return table

    def canOverlap(self, row1, row2):
        # This function checks if two rows can be merged
        flag=True
        for row in self.contents:
            if row["Row"]==row1:
                rowA = row
            if row["Row"]==row2:
                rowB = row
        for key in self.getColumns().keys():
            if key!="Row":
                if rowA[key]!=None and rowB[key]!=None:
                    flag=False
                    break
        return flag

    def reduce(self):
        # This function iterates through every pair of rows and checks if they can be merged
        clashes = []
        pairable = []
        rows = self.makeRows()
        for row1 in rows:
            for row2 in rows:
                if row1!=row2:
                    if self.canOverlap(row1, row2):
                        if pairable.count(sorted([row1,row2]))==0:
                            pairable.append(sorted([row1,row2]))
                    else:
                        if clashes.count(sorted([row1,row2]))==0:
                            clashes.append(sorted([row1,row2]))
        return clashes, pairable

    def getTable(self):
        return self.table

    def rename(self):
        table = self.table.copy()
        for i in range(table.shape[0]):
            table = table.rename(index={i: table.iloc[i]["Row"]})
        table.drop(columns=["Row"], inplace=True)
        return table

    def center(self, table):
        return table.style.set_table_styles([
            {"selector": "th", "props": [("text-align", "center")]},
            {"selector": "td", "props": [("text-align", "right")]}])

    def getImage(self):
        # This function converts the table into an image
        table = self.rename()
        table = self.center(table)
        dataframe_image.export(table, self.name+".png")
        return 

tab = table(sys.argv[1])
tab.getImage()

clashes, pairable = tab.reduce()

print ("\nDays with Slot Clashes")
for days in clashes:
    print (days[0], " And ", days[1])

print ("\nDays that can be Merged")
for days in pairable:
    print (days[0], " And ", days[1])
