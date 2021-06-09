#Makefile

ifeq "$(MYMC)" "Laptop"
	cc = gcc
	cflags = -g3 -ggdb 
endif

ifeq "$(MYMC)" "Aqua"
	cc = icc
	cflags = #no cflags
endif


default:
	@echo "Please specify target first" #prevents user from making without specifying target

math: *.h $(cc)
	@echo $(CC)
	@echo $(MYMC)
	@rm -f *.out
	@$(cc) $(cflags) -o math.out mathematics.c

#in the following target, we touch a new file, put in some C code using the echo command, and then compile and show its output, all in a single make command!
cbrt: cbrtlib.h modlib.h
	@touch cuberooter.c;
	@echo "#include <stdio.h>\n#include \"modlib.h\"\n#include \"cbrtlib.h\"\nint main(){\n\tprintf(\"%.010f\",cbroot(125));\n\treturn 0;\n}" > cuberooter.c;
	@$(cc) $(cflags) -o cbrt.out cuberooter.c
	@./cbrt.out

# similar to the previous one
sqrt: sqrtlib.h cbrtlib.h
	@touch squarerooter.c;
	@echo "#include <stdio.h>\n#include \"modlib.h\"\n#include \"sqrtlib.h\"\nint main(){\n\tprintf(\"%.010f\",sqroot(121));\n\treturn 0;\n}" > squarerooter.c;
	@$(cc) $(cflags) -o sqrt.out squarerooter.c
	@./sqrt.out
