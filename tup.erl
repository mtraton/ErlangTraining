-module(tup).
-export([conv/1]).

conv({centimeter, X}) ->
    {inch, X / 2.54};
    
conv({inch, Y}) ->
    {centimeter, Y * 2.54}. 