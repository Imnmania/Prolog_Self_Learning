animal(fishs).
animal(birds).
animal(mammals).

one_kind(fishs).
another_type(birds).
third_kind(mammals).

lay_egg(fishs).
lay_egg(birds).


dangerous(shirk) :- fishs(shirk).
fishs(salmon).
fishs(shirk).
delicacy(salmon).

birds(canary).
birds(ostrich).
yellow(canary).

tall(ostrich).
fly(canary).
walk(ostrich).


skin(X) :- animal(X).

gills(X) :- one_kind(X).
swim(X) :- one_kind(X).

wings(X) :- another_type(X).
can_fly(X) :- another_type(X).





/*
fly(canary)
color_of_canary(X)
fly(ostrich)
skin(canary)
dangerous(shirk)
eat(salmon)
*/