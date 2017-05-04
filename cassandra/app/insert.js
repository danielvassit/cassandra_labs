
const cassandra = require('cassandra-driver');
const client = new cassandra.Client({ contactPoints: ['127.0.0.1']});

const query = "insert into db.users (userid, name) values ('2', 'daniel')";
client.execute(query, function (err, result) {
    if (err) return console.error(err);
    process.exit();
});
