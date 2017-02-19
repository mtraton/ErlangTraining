-module(conv).
-export([convert/2]).

convert(X, centimeter) ->
   X * 2.54;
    
convert(X, inch) ->
   X / 2.54.
    