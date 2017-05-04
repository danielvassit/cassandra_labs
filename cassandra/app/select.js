
const cassandra = require('cassandra-driver');
const client = new cassandra.Client({ contactPoints: ['127.0.0.1']});

const query = 'SELECT * FROM db.users';
client.execute(query, function (err, result) {
    if (err) return console.error(err);

    var user = result.rows[0];
    console.log("User %s", user.name);

    process.exit();
});