%
%	[Utilities] -> writeln
%

writeln(X) :-
	write(X),
	nl.

%
%	[Utilities] -> Read Integer
%

readInteger(ReturnValue) :-
	read(ReturnValue),
	integer(ReturnValue),
	!.

readInteger(ReturnValue) :-
	writeln('An integer was expected, not something else!'),
	readInteger(ReturnValue).

%
%	[Utilities] -> Read Yes / No
%

readYN(y).
readYN(n).

readYN(X) :- 
	read(X), 
	readYN(X), 
	!.

readYN(X) :- 
	writeln('You need to choose between "y" and "n".'),
	readYN(X).