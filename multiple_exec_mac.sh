#!/usr/bin/env bash

for ((i = 0; i < $1; i++)) ; do
    osascript -e "tell application \"iTerm\"
                    delay 1
                    set newWindow to (create window with default profile)
                        tell current session of newWindow
                            write text \"cd \" & \"$PWD \" & \" && clear\"
                            write text \"$rebar3 shell\"
                        end tell
                  end tell"
	sleep 5
done