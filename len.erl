-module(len).
-export([len/1]).

len([]) ->
    0;
len([Head | Rest]) ->
    len(Rest) + 1.
