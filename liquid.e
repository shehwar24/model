note
	description: "Summary description for {LIQUID}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	LIQUID
inherit MEDICATION redefine set_kind end

create
	make_medication
feature
	make_medication(a_name: STRING; a_kind: INTEGER; a_lo: VALUE; a_hi : VALUE)
	do
		name := a_name
		kind := a_kind
		lo := a_lo
		hi := a_hi

	end

	set_kind(a_kind : INTEGER)
	do
		kind := a_kind
	end

end
