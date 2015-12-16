-module (loop).
-export ([loop/1]).

loop (0) -> 0;
loop (N) -> loop(N-1), sleep (100), io:format("~p~n", [N]).

sleep (MS) -> 
	receive 
		after MS -> true
	end.
