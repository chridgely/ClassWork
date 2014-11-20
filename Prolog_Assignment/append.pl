/*This is my code -Chris Ridgely*/

/*
Purpose: Append Base Case
In: Empty List, List, Result Variable 
Out:Third Element in List
*/
append([],Ws,Ws).

/*
Purpose: Find a placement in a list
In: 2 Lists and Result Variable
Out: User selected place
*/
append([X|Xs], Ws, [X|Zs]) :- append(Xs, Ws, Zs).


/*
Purpose: Find third place in a list
In: 1 List and Result Variable
Out: Third place's value
*/
findThird(X,Z) :- append([_,_,X], _, Z).

/*
Purpose: Find last element of a list
In: 1 List and Result Variable
Out: Last element
*/
findLast(X,Z) :- append(_, [X], Z).

/*
Purpose: Find all but the last element in the list
In: 1 List and Result Variable
Out: All elements but the last one
*/
notLast(X,Z) :-append(X, [_], Z).

/*
Purpose: If a list is a concatenation of three copies of the same sublist
In: 2 Lists and Result Variable
Out: if it is true or false
*/
isCat(X, A)  :- append(X,X,Y), append(X,Y,Z), Z == A .

/*
Purpose: Whether a list Y is formed by inserting an element A somewhere in a list X
In: 2 Lists and an element
Out: Missing Number
*/
isFormed(Y,A,X,Q,W,E) :- append(Y,A,X),append(Q,A,W),append(Q,E,Y). 

/*
Purpose: The other formed thing was just way too difficult to type
In: A is the full list, B is the shorter list, C is the number to check
Out: True or False and if no number is given, what number will evaluate to true
*/
howFormed(A,B,C) :- isFormed(_, _, A, _, B, C).
