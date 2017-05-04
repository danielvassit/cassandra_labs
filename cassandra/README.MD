# Cassandra docker

This is a simple vagrant cassandra node built for testing purposes.

# Start cassandra:

Start Cassandra:
```s
cassandra
```

In another terminal check if Cassandra is running:
```s
nodetool status
```

Create simple DB and populate with data:
```s
cqlsh -e "CREATE KEYSPACE db WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 3 };"
cqlsh -e "CREATE TABLE db.users ( userid text PRIMARY KEY,name text );"
cqlsh -e "insert into db.users (userid, name) values ('1', 'John');"
```

Check if db exists and data is in db:
```s
cqlsh -e "SELECT * FROM system_schema.keyspaces"
cqlsh -e "SELECT * FROM db.users;"
```

# How to run app:

Install node dependencies:
```s
npm install cassandra-driver --save
```

Run app:
```s
node insert.js
node select.js
```