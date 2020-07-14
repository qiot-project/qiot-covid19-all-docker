use qiot
db.createUser(
   {
     user: "qiot",
     pwd: "qiot",
     roles: [ { role: "readWrite", db: "qiot" } ]
   }
)
db.counters.insert(
 {
      _id: "userid",
      seq: NumberInt(0)
   }
)
