loves(romeo, juliet).

loves(juliet, romeo) :- loves(romeo, juliet).

happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).

runs(albert) :-
    happy(albert).

dances(alice) :-
    happy(alice),
    with_albert(alice).

does_alice_dance :- dances(alice),
    write('When Alice is Happy and with Albert she dances.').

swims(bob) :-
    happy(bob),
    near_water(bob).

swims(bill) :-
    happy(bill).

swims(bill) :-
    near_water(bill).
    