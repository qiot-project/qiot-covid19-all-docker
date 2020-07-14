db.createUser(
  {
	user : "qiot",
	pwd : "qiot",
	roles : [
	  {
	    role : "readWrite",
	    db : "qiot"
	  }
	]
  }
)