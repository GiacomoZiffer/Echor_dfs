#!/usr/bin/env bash

for ((i = 0; i < $1; i++)) ; do
    sleep 5
    osascript -e "tell application \"iTerm\"
                    set newWindow to (create window with default profile)
                        tell current session of newWindow
                            write text \"cd \" & \"$PWD \" & \" && clear\"
                            write text \"$rebar3 shell\"
                        end tell
                  end tell"
done