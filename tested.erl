-module(tested).
-compile(export_all).

main()->
	{ok, [A]} = io:fread("", "~d"),
	loop(A).

	loop(42) ->
		ok;
	
	loop(A) ->
		io:format("~p~n",[A]),
		{ok, [B]} = io:fread("", "~d"),
		loop(B).