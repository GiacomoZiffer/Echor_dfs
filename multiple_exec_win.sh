for ((i = 0; i < $1; i++)) ; do
    sleep 5
	start powershell "rebar3 shell"
done