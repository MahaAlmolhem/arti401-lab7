
% Display all items using recursion
display_items([]).
display_items([H|T]) :-
    writeln(H),
    display_items(T).

% Shopping menu
menu(List) :-
    nl,
    writeln('** SHOPPING LIST **'),
    writeln('d. display all items.'),
    writeln('a. Add an item to the list.'),
    writeln('e. exit.'),
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    action(Choice, List).

% Display items
action(d, List) :-
    display_items(List),
    menu(List).

% Add a new item
action(a, List) :-
    write('enter the item you want to add: '),
    read(Item),
    append(List, [Item], NewList),
    writeln('The item has been added'),
    menu(NewList).

% Exit
action(e, _) :-
    writeln('Goodbye!').

% Start with five items
start :-
    menu([coffee, milk, chocolate, apple, juice]).

