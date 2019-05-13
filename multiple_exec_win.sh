for ((i = 0; i < $1; i++)) ; do
	start powershell "rebar3 shell"
	sleep 5
done
read