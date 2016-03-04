token=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 15 | head -n 1)
echo {\"token\":\"$token\"} > /root/selogangsal.github.io/source/unik.json
./deploy.sh "update token"