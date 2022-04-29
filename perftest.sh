host="fabmedical-599082.mongo.cosmos.azure.com"
username="fabmedical-599082"
password="nZCcInlL4PBhaez3CLlo7xcvsOcjMK58wOPK6q0qMIciwkTNbEDZdKvHHGqI8BRXM8mLD6ckL37zBxUzNjn0Dw=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
