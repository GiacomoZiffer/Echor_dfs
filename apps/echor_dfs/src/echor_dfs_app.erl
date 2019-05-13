%%%-------------------------------------------------------------------
%% @doc echor_dfs public API
%% @end
%%%-------------------------------------------------------------------

-module(echor_dfs_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
  echor_dfs_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
  ok.

%%====================================================================
%% Internal functions
%%====================================================================
