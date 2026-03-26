gcd(A, 0, A).
gcd(A, B, G) :-
    B > 0,
    R is A mod B,
    gcd(B, R, G).

start1 :-
    write('Введите первое число: '), nl,
    read(A),
    write('Введите второе число: '), nl,
    read(B),
    gcd(A, B, G),
    write('НОД = '), write(G), nl.
