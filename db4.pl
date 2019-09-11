female(mum).
female(kydd).
female(elizabeth).
female(margaret).
female(diana).
female(anne).
female(sarah).
female(zara).
female(beatrice).
female(eugenie).

male(george).
male(spencer).
male(philip).
male(charles).
male(mark).
male(andrew).
male(edward).
male(william).
male(harry).
male(peter).

parent(george,elizabeth).
parent(george,margaret).
parent(mum,elizabeth).
parent(mum,margareth).
parent(spencer,diana).
parent(kydd,diana).
parent(elizabeth,charles).
parent(elizabeth,anne).
parent(elizabeth,andrew).
parent(elizabeth,edward).
parent(philip,charles).
parent(philip,anne).
parent(philip,andrew).
parent(philip,edward).
parent(diana,william).
parent(diana,harry).
parent(charles,william).
parent(charles,harry).
parent(anne,peter).
parent(anne,zara).
parent(mark,peter).
parent(mark,zara).
parent(andrew,beatrice).
parent(andrew,eugenie).
parent(sarah,beatrice).
parent(sarah,eugenie).

married(george,mum).
married(spencer,kydd).
married(elizabeth,philip).
married(charles,diana).
married(mark,anne).
married(andrew,sarah).

son(X,Y) :- male(X), parent(Y,X).
daughter(X,Y) :- female(X), parent(Y,X).
siblings(X,Y) :- parent(Z,X), parent(Z,Y), not(X=Y).
brother(X,Y) :- male(X), parent(Z,X), parent(Z,Y), not(X=Y).
sister(X,Y) :- female(X), parent(Z,X), parent(Z,Y), not(X=Y).
uncle(X,Y) :- male(X), siblings(X,Z), parent(Z,Y).
aunt(X,Y) :- female(X), siblings(X,Z), parent(Z,Y).
grandChild(Y,X) :- parent(Z,Y),parent(X,Z).
greatgrandparent(X,Y) :-parent(X,Z), grandChild(Y,Z).
brotherinlaw(X,Y) :- male(X), brother(X,Z), married(Z,Y).
sisterinlaw(X,Y):- female(X), sister(X,Z), married(Z,Y).


/*
son(X,diana)
daughter(X,anne)
siblings(X,margaret)
brother(X,harry)
uncle(X,william)
aunt(X,william)
grandChild(X,elizabeth)
greatgrandparent(X,william)
brotherinlaw(X,diana)
*/