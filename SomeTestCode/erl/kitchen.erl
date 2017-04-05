-module(kitchen).
-compile(export_all).

fridge2(FoodList) ->
    receive
        {From, {store, Food}} ->
            From ! {self(), ok},
            fridge2([Food|FoodList]);
        {From, {take, Food}} ->
            case lists:member(Food, FoodList) of
                true ->
                    From ! {self(), {ok, Food}},
                    fridge2(lists:delete(Food, FoodList));
                false ->
                    From ! {self(), not_found},
                    fridge2(FoodList)
            end;
        terminate ->
            ok
    end.
store(Food) ->
    self() ! {store, Food},
    receive
        {Pid, Msg} -> Msg
    end.

take(Food) ->
    self() ! {take, Food},
    receive
        {Pid, Msg} -> Msg
    end.

