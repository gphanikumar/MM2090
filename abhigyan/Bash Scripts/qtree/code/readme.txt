Usage:
	g++ *.cpp
	./a.out
Files:
	main.cpp
		Only the major function calls
	protos.hpp
		Defines struct GridVars that stores all necessary data
	user.cpp
		user class and other user functions that do actual computation
		user class extends the qtree class and qarray class
	user.hpp
		Prototype declaration for the user class and other functions
	qtree.cpp
		qtree class with functions that are purely for the grid / tree
	qtree.hpp
		Prototype declaration for the class qtree
	qarray.cpp
		qarray class with functions to work on array of GridVars
	qarray.hpp
		Prototype declaration for the class qarray
	diff.o will calculate the diff between the fluxes of refined and unrefined 
