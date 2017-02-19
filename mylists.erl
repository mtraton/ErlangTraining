-module(mylists).
-export([subl/2, zipT/2]).

reverse([], Acc) ->
    Acc;
    
reverse([Head | Tail], Acc) ->
    reverse(Tail, [Head | Acc]).
    
%%sublist(List, 0) ->
%%    [].
    
%%sublist([Head | Tail], Length) where Length > 0 ->
%%    [Head | sublist(Tail, Length - 1).
    
subl(List, N) ->
        lists:reverse(sublist(List, N, [])).
  
sublist([], _Length, Acc) ->
    Acc;
  
sublist(_List, 0, Acc) ->
    Acc;


    
sublist([Head | Tail], Length, Acc) when Length > 0 ->
    sublist(Tail, Length - 1, [Head | Acc]).
    
   tail_sublist(L, N) -> tail_sublist(L, N, []).
 
tail_sublist(_, 0, SubList) -> SubList;
tail_sublist([], _, SubList) -> SubList;
tail_sublist([H|T], N, SubList) when N > 0 ->
tail_sublist(T, N-1, [H|SubList]).


    
zipT(FirstList, SecondList) -> 
    lists:reverse(zipTail(FirstList, SecondList, [])).
    
zipTail([], _, Acc)
    ->Acc;
    
zipTail(_, [], Acc)
    -> Acc;
    
zipTail([FirstHead | FirstTail], [SecondHead | SecondTail], Acc) ->
    zipTail(FirstTail, SecondTail, [{FirstHead, SecondHead} | Acc]).    