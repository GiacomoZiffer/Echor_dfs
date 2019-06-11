-module(dfs).
-author("Giacomo").

%% API
-export([start/0,
  start/1,
  leave/0,
  add/1,
  safe_add/1,
  get_file/1,
  delete/1,
  safe_delete/1,
  pop/1,
  get_file_id/1,
  get_successor_list/0,
  show_finger_table/0,
  show_local_files/0,
  get_predecessor/0,
  get_own_id/0,
  run_script/0,
  get_statistics/0]).

start() ->
  block_filter:start().

start(Address) ->
  block_filter:start(Address).

leave() ->
  block_filter:leave().

add(Path) ->
  block_filter:add(Path).

safe_add(Path) ->
  block_filter:safe_add(Path).

get_file(Name) ->
  block_filter:get_res(Name).

delete(Name) ->
  block_filter:delete(Name).

safe_delete(Name) ->
  block_filter:safe_delete(Name).

pop(Name) ->
  block_filter:pop(Name).

get_file_id(Name) ->
  block_filter:get_res_id(Name).

get_successor_list() ->
  application_manager:get_successor_list().

show_finger_table() ->
  application_manager:show_finger_table().

show_local_files() ->
  block_resource_handler:show_res().

get_predecessor() ->
  application_manager:get_predecessor().

get_own_id() ->
  application_manager:get_own_id().

get_statistics() ->
  application_manager:statistics_gather().

run_script() ->
  {ok, Directory} = file:get_cwd(),
  file:script(Directory ++ "/app.commands").
