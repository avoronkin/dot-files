DBQuery.prototype._prettyShell = true

var prompt = function () {
    var user = db.runCommand({connectionStatus : 1}).authInfo.authenticatedUsers[0];
    var username = !!user ? user.user : 'anon';

    var setName = db.isMaster().setName;
    var secondary =  db.isMaster().secondary;
    var primary = db.isMaster().primary;
    var arbiter = db.isMaster().arbiters && db.isMaster().arbiters.indexOf(db.isMaster().me) !== -1;
    var replicaMemberType = secondary ? 's' : (primary ? 'p' : (arbiter ? 'a' : ''));
    var replica = setName ? [setName, replicaMemberType].join('/')  : '';

    var host = replica ? replica : db.getMongo().toString().split(" ")[2];

    var dbname = db.getName();

    var time =ISODate().toLocaleTimeString();

    return username + "@" + host + ":" + dbname + "> "
}

DBCollection.prototype.id = function(id) {
    return db.getCollection(this._shortName).findOne( { "_id" : ObjectId(id) } );
}

//try {
//    load('/home/alex/.mongorc.local.js')
//} catch (err) {
//    print(err)
//}
