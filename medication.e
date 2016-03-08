note
	description: "Summary description for {MEDICATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
 	MEDICATION


feature
	make(a_name: STRING; a_kind: INTEGER; a_lo: VALUE; a_hi : VALUE)
	do
		name := a_name
		kind := a_kind
		lo := a_lo
		hi := a_hi
	end

feature
	name :STRING
	kind : INTEGER
	lo : VALUE
	hi : VALUE
	pill: INTEGER =1
	liquid: INTEGER =2

feature
	set_kind(a_kind : INTEGER)
	deferred
	end


end
