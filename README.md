echor_dfs
=====

An Erlang implementation of a **distributed file system** using chord P2P system as the underlying protocol.

Dependencies
----

The dependency are:
- **Echo_rd**: library that implements the chord P2P system, more details here: https://github.com/Robyroc/Echo_rd
- **Eblock_rd**: library for handling resource management, more details here: https://github.com/GiacomoZiffer/Eblock_rd
- **Lager**: used for logging

Multiple Execution
----

[multiple_exec_mac.sh](multiple_exec_mac.sh) and [multiple_exec_win.sh](multiple_exec_win.sh) are two scripts 
(the first is the mac version, the second the windows version) for running multiple nodes, whose number is passed
 as a parameter, with a frequence of *1 nodes/5 sec*. Really useful for testing and for analysis of the performances.

Build
-----

    $ rebar3 compile
