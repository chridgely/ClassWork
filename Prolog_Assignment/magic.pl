/* Most of this is my code, sorry about the first bit*/

/*
Purpose: It is a permutation generator -For the life of me I couldn't figure this out. This is not my code, I'm so sorry. May the grading gods be gentle on my poor poor soul. 
In: A list of values
Out: Different combinations of those values in a list
*/
perm([],[]).
perm(L,[H|T]) :-
 append(V,[H|U],L),
 append(V,U,W), perm(W,T).


/*
Purpose:Adds up all the connections in the square and makes sure they are all equal
In:A list of number values for the cube
Out: True or False or the Value needed
*/
square([A,B,C,D,E,F,G,H,I]) :-
 Z is A+B+C,
 Z is A+E+I,
 Z is A+D+G,
 Z is D+E+F,
 Z is G+H+I,
 Z is C+E+G,
 Z is B+E+H,
 Z is C+F+I.


/*
Purpose: Checks to see if it is a magic square, if yes, print it out
In: A list of number values for the square
Out: The different permutations of a magic square
*/
print(X) :- square(X), write(X), nl.


/*
Purpose: Makes it easier to type
In: Number values for the square
Out: Different permutations of a magic square
*/
permSquare([A,B,C,D,E,F,G,H,I]) :- perm([A,B,C,D,E,F,G,H,I],X), print(X).
