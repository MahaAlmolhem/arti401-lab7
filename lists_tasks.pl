
% Task 2: Delete all occurrences of an element

% Base case: empty list
deleteElement(_, [], []).

% If the head equals X, skip it
deleteElement(X, [X|Tail], Result) :-
    !,
    deleteElement(X, Tail, Result).

% Otherwise, keep the head
deleteElement(X, [H|Tail], [H|Result]) :-
    deleteElement(X, Tail, Result).


% Task 3: Add an element at the end of a list

% Base case: empty list
add_at_the_end(X, [], [X]).

% Recursive case
add_at_the_end(X, [H|T], [H|R]) :-
    add_at_the_end(X, T, R).

