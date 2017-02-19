-module(functions).
-export([head/1]).
-export([second/1]).
-export([same/2]).

head([Head | _ ]) ->
	Head.
	
second([_, SecondElement | _]) -> 
	SecondElement.
	
same(Arg, Arg) ->
	true;
same(Arg, OtherArg) ->
	false.