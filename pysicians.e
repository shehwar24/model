note
	description: "Summary description for {PYSICIANS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	PHYSICIANS

feature
	name :STRING
	id: INTEGER
	kind: INTEGER
	generalist: INTEGER =3
	specialist: INTEGER =4

feature
	make(a_name: STRING; a_id : INTEGER; a_kind: INTEGER)
	do
		id := a_id
		name := a_name
		kind := a_kind
	end

feature
	set_kind(a_kind: INTEGER)
	deferred
	end

end
