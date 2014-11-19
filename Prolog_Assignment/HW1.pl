
male(steve).
female(fancy).

parents(steve,chris).
parents(fancy,chris).
parents(betty,chris).

father(F,C) :- male(F),parents(F,C).
mother(M,C) :- female(M),parents(M,C). 
