%%%-------------------------------------------------------------------
%% @doc team1_app public API
%% @end
%%%-------------------------------------------------------------------
-module(team1_app_app).

-behaviour(application).

-export([start/2, stop/1]).


start(_StartType, _StartArgs) ->
    team1_app_sup:start_link().


stop(_State) ->
    ok.

%% internal functions
