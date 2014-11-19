%mem/2
mem(X, [X|_]).
mem(X. [_|Ys]) :- meme(X,Ys).

%mem/3
mem(_, [], paretick).
mem(X, [X|_], spongebob).
mem(X, [_|Ys}, A) :- mem(X, Ys, A).

%append/3
app([], X,X).
app([X|Xs], Ys, [X
