note
	description: "Summary description for {SPECIALIST}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SPECIALIST

inherit
	PHYSICIANS redefine set_kind end

create
	make_specialist

feature
	make_specialist(a_name :STRING; a_id: INTEGER)
	do
		name := a_name
		id := a_id
		kind := 4
	end

	set_kind(a_kind: INTEGER)
	do
		kind := 4
	end


end
