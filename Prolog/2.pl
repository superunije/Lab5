count_end([], _, 0).

count_end([H|T], D, Count) :-
    Last is H mod 10,
    Last =:= D,
    count_end(T, D, C1),
    Count is C1 + 1.

count_end([H|T], D, Count) :-
    Last is H mod 10,
    Last =\= D,
    count_end(T, D, Count).

start2 :-
    write('Введите список ([1,2,3,...]): '), nl,
    read(List),
    write('Введите последнюю цифру числа: '), nl,
    read(D),
    count_end(List, D, C),
    write('Количество найденных чисел с цифрой '),write(D), write(' в конце: '), write(C), nl.
