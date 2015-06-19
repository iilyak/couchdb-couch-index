-module(couch_index_plugin).

-export([index_update/4]).

-include_lib("couch/include/couch_db.hrl").

%% ------------------------------------------------------------------
%% API Function Definitions
%% ------------------------------------------------------------------

index_update(State, View, Updated, Removed) ->
    Handle = couch_epi:get_handle(couch_index),
    Args = [State, View, Updated, Removed],
    couch_epi:apply(Handle, couch_index, index_update, Args, [ignore_providers]).
