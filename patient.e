note
	description: "Summary description for {PATIENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PATIENT
create
	make

feature
	make(a_name : STRING; a_id : INTEGER)
	do
		name := a_name
		id := a_id
	end

feature
	name : STRING
	id : INTEGER
	

end
