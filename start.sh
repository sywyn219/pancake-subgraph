
nohup ./graph-node --postgres-url postgresql://postgres:postgres@localhost:5432/graphnode --ethereum-rpc mainnet:https://mainnet.hsocoin.net --ipfs 127.0.0.1:5001 >>gn.log 2>&1 &

CREATE DATABASE graphnode;
docker pull postgres
docker run --name postgresql -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres
docker exec -it 7d0c38b9df41 psql -h 127.0.0.1 -p 5432 -U postgres


graph init --product hosting-service --node http://127.0.0.1:8001 --abi ./PancakePair.json --network https://*.*.net --contract-name PancakePair --protocol ethereum --from-contract 0x59b4EAadc24dC061C738132E4321bedB2187e2A6
