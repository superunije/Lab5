remove_duplicates([], []).
remove_duplicates([H|T], R) :-
    member(H, T),
    remove_duplicates(T, R).
remove_duplicates([H|T], [H|R]) :-
    \+ member(H, T),
    remove_duplicates(T, R).

diff([], _, []).
diff([H|T], B, R) :-
    member(H, B),
    diff(T, B, R).
diff([H|T], B, [H|R]) :-
    \+ member(H, B),
    diff(T, B, R).

start3 :-
    write('Введите первое множество (список): '), nl,
    read(A0),
    remove_duplicates(A0, A),
    write('Введите второе множество (список): '), nl,
    read(B0),
    remove_duplicates(B0, B),
    diff(A, B, R),
    write('Разность двух множеств: '), write(R), nl.
