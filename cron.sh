PATH=/usr/local/bin/:$PATH
0 10,15 * * * docker image prune -a -f >/dev/null
0 10 1 * * * docker container prune -f --filter "until=24h" >/dev/null
0 10 1 * * * docker volume prune -filter >/dev/null 
