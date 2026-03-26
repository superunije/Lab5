friends(A,N,V,G,D) :-
    member(A,[0,1]),
    member(N,[0,1]),
    member(V,[0,1]),
    member(G,[0,1]),
    member(D,[0,1]),

    (A = 1, D = 1 -> N = 1 ; true),
    (D = 0 -> N = 1, V = 0 ; true),
    A =\= V,
    (D = 1 -> G = 0 ; true),
    (N = 0, V = 0 -> D = 1 ; true),
    (N = 0, V = 1 -> D = 0, G = 1 ; true).

solution :-
    friends(A,N,V,G,D),
    format('A=~w, N=~w, V=~w, G=~w, D=~w~n',[A,N,V,G,D]),
    fail.
solution.

start4. :-
    writeln('Возможные варианты походов в кружок друзей'),
    solution.