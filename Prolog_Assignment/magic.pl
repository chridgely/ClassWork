/* Permutation Code */

perm([],[]).
perm(L,[H|T]) :-
 append(V,[H|U],L),
 append(V,U,W), perm(W,T).


/* Magic Square  */

square([A,B,C,D,E,F,G,H,I]) :-
 Z is A+B+C,
 Z is A+E+I,
 Z is A+D+G,
 Z is D+E+F,
 Z is G+H+I,
 Z is C+E+G,
 Z is B+E+H,
 Z is C+F+I.

print(X) :- square(X), write(X), nl.

permSquare([A,B,C,D,E,F,G,H,I]) :- perm([A,B,C,D,E,F,G,H,I],X), print(X).
