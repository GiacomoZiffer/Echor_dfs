echor_dfs
=====

An Erlang implementation of a **distributed file system** using chord P2P system as the underlying protocol.

Dependencies
----

The dependency are:
- **Echo_rd**: library that implements the chord P2P system, more details here: https://github.com/Robyroc/Echo_rd
- **Eblock_rd**: library for handling resource management, more details here: https://github.com/GiacomoZiffer/Eblock_rd
- **Lager**: used for logging

Build
-----

    $ rebar3 compile
