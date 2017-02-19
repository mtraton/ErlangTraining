-module(ex).
-compile(export_all).
-record(merchandise,
{
 name, 
 price,
 quantity.
}).

Apples = #merchandise{name=apple, price=2.49, quantity=100}.
Bananas = #merchandise{name=banana, price=3.99, quantity=50}.
Oranges = #merchandise{name=orange, price=4.05, quantity=200}.

test([42 | _]) ->
	ok;	
	
test([Head | Tail]) ->
	io:format("~p~n", [Head]),
	test(Tail).


%% 1. odczytaj ilość linii
%% 2. iteruj po liniach
%% 3. sprawdzaj, czy pierwsza litera jest równa ostatniej i usuwaj je ze stringu
%% 		jeśli nie są równe, to string nie jest palindromem

%% edge cases
%% pusty string
%% za długi sting
%% ogromna liczba wierszy

main() ->
	{ok, [NumberOfLines]} = io:fread("", "~d"), %%czemu to jest jako element listy?
	palindrome(NumberOfLines).
	
palindrome(0) -> 
	ok;
	
palindrome(NumberOfLines) ->
	{ok, PalindromeString} = io:fread("", "~s"),
	io:format("~p~n", [is_palindrome(PalindromeString)]),
	palindrome(NumberOfLines-1).

isPalindrome(String) ->
	Pal = lists:reverse(String), 
	io:format("~s~n", [Pal]),
	Pal =:= String.

is_palindrome( String ) -> String =:= lists:reverse(String). %% czemu to nic nie robi?
	
%isPalindrome(String) -> 
%	Pal = lists:reverse(String),
%	io:format("~w~n", Pal =:= String).

	
	
generateQuadratic(N) ->
	List = [{A,B,C} || A <- lists:seq(1,N), B <- lists:seq(1,N), C <- lists:seq(1,N),  A*A + B*B =:= C*C, A + B + C =< N].
	
