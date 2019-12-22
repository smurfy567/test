%Q1

isElementInList(El,[El|_]).

isElementInList(El, List) :-

List =  [_|T],
isElementInList(El, T).

%Q2

mergeLists([], X , X).

mergeLists(List1, List2, MList):-

List1 = [H|T], 
MList = [H|X],
mergeLists(T, List2, X).
	

%Q3

reverseList([],[]).

reverseList(List, ReversedList):-

List = [H|T],
reverseList(T, X),
mergeLists(X, [H], ReversedList).


%Q4

insertElementIntoListEnd(X, [], [X]).

insertElementIntoListEnd(X, [H|T], [H|Y]):-

    insertElementIntoListEnd(X,T,Y).

