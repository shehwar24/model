note
	description: "Summary description for {PRESCRIPTION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PRESCRIPTION
create
	make

feature
	make(a_id: INTEGER; a_patient: PATIENT; a_doctor: PHYSICIANS)
	do
		id := a_id
		patient := a_patient
		doctor := a_doctor

	end

feature
	id: INTEGER
	patient : PATIENT
	doctor : PHYSICIANS




end
