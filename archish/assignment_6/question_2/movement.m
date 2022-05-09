# Initializing the State

state = zeros(130,130);

for row = 2:size(state)(1)-1
    for column = 2:size(state)(2)-1
        value = rand();
        if (value>=0.5)
            state(row,column)=255;
        endif
    endfor
endfor
history = state;

#imshow(state)
imwrite(state, "Iteration-0.png")

# Performing the Operations

N = 10^6;
for time = 1:N
    x = floor(rand()*size(state)(1));
    y = floor(rand()*size(state)(2));
    if ((x>1)&&(x<size(state)(1))&&(y>1)&&(y<size(state)(2)))
        like = state(x-1,y)+state(x+1,y)+state(x,y-1)+state(x,y+1);

        if (like>2*255)
            # The Like neighbours are white
            if (state(x,y)==255)
                state(x,y) = 0;
                if (state(x-1,y)==0)
                    state(x-1,y) = 255;
                elseif (state(x+1,y)==0)
                    state(x+1,y) = 255;
                elseif (state(x,y-1)==0)
                    state(x,y-1) = 255;
                elseif (state(x,y+1)==0)
                    state(x,y+1) = 255;
                endif
            endif
        elseif (like==2*255)
            if (state(x,y)==255)
                state(x,y) = 0;
                if (state(x-1,y)==0)
                    state(x-1,y) = 255;
                elseif (state(x+1,y)==0)
                    state(x+1,y) = 255;
                elseif (state(x,y-1)==0)
                    state(x,y-1) = 255;
                elseif (state(x,y+1)==0)
                    state(x,y+1) = 255;
                endif
            elseif (state(x,y)==0)
                # The Like neighbours are black
                state(x,y) = 255;
                if (state(x-1,y)==255)
                    state(x-1,y) = 0;
                elseif (state(x+1,y)==255)
                    state(x+1,y) = 0;
                elseif (state(x,y-1)==255)
                    state(x,y-1) = 0;
                elseif (state(x,y+1)==255)
                    state(x,y+1) = 0;
                endif
            endif
        elseif (like<2*255)
            if (state(x,y)==0)
                state(x,y) = 255;
                if (state(x-1,y)==255)
                    state(x-1,y) = 0;
                elseif (state(x+1,y)==255)
                    state(x+1,y) = 0;
                elseif (state(x,y-1)==255)
                    state(x,y-1) = 0;
                elseif (state(x,y+1)==255)
                    state(x,y+1) = 0;
                endif
            endif

        endif

    endif
    if (time<10000)
        if (mod(time,100)==0)
            name = sprintf("Iteration-%d.png", time);
            imwrite(state, name);
        endif
    elseif (time<100000)
        if (mod(time,1000)==0)
            name = sprintf("Iteration-%d.png", time);
            imwrite(state, name);
        endif
    else
        if (mod(time,10000)==0)
            name = sprintf("Iteration-%d.png", time);
            imwrite(state, name);
        endif
    endif
endfor
