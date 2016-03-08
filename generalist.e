note
	description: "Summary description for {GENERALIST}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GENERALIST
inherit
	PHYSICIANS redefine set_kind end

create
	make_generalist

feature
	make_generalist(a_name :STRING; a_id: INTEGER)
	do
		name := a_name
		id := a_id
		kind := 3
	end

	set_kind(a_kind: INTEGER)
	do
		kind := 3
	end

end
