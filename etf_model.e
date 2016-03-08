note
	description: "A default business model."
	author: "Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	EHEALTH

inherit

	 ANY
		redefine
			out
		end



create {EHEALTH_ACCESS}
	make

feature {NONE} -- Initialization
	make
			-- Initialization for `Current'.
		do
			create s.make_empty
			i := 0

			create patients.make(10)
			create medications.make(10)
			create physicians.make(10)
--			create interactions.make(10)



		end

feature -- model attributes
	s : STRING
	i : INTEGER
	patients : HASH_TABLE[PATIENT, INTEGER]
	medications : HASH_TABLE[TUPLE[STRING,INTEGER,VALUE,VALUE], INTEGER]
--	prescriptions : LIST[INTEGER]
--	interactions : HASH_TABLE[TUPLE [INTEGER, INTEGER], INTEGER]
	physicians : HASH_TABLE[PHYSICIANS, INTEGER]
	pill: INTEGER =1
	liquid: INTEGER =2
	generalist: INTEGER =3
	specialist: INTEGER =4

feature
	add_physician( id:INTEGER; name: STRING; kind: INTEGER)
	require
			kind_invalid: kind = generalist or kind = specialist
	local
		a_specialist :SPECIALIST
		a_generalist : GENERALIST
	do
		if
			kind = specialist

		then
			a_specialist := create {SPECIALIST}.make_specialist(name, id)
			physicians.extend (a_specialist, id)
		else
			a_generalist := create {GENERALIST}.make_generalist(name, id)
			physicians.extend (a_generalist, id)
		end

	ensure
		physicians_exists : physicians.has (id)
	end




	add_medication(id : INTEGER ; medicine: TUPLE [STRING_8,INTEGER,VALUE,VALUE])
	local
		a_medication : PILL
	--	a_name : STRING_8
	do
--		if
--			(medicine.item (2) = pill)
--		then
			--a_medication := create {PILL}.make_medication(medicine.item (1), medicine.item (2), medicine.item (3), medicine.item (4))
	--	create {PILL}a_medication.make_medication(medicine.item (1), medicine.item (2), medicine.item (3), medicine.item (4))
			medications.extend (medicine, id)
	--	end
	--	else

	end

	add_patient(id: INTEGER; name: STRING)
	local
		a_patient : PATIENT
	do
		a_patient := create {PATIENT}.make (name, id)
		patients.extend (a_patient, id)
	end

	add_interaction(id1: INTEGER; id2 : INTEGER)
	local
--		med1 : TUPLE[STRING,INTEGER,VALUE, VALUE]
--		med2 : TUPLE[STRING,INTEGER,VALUE, VALUE]
	do
--		attached medications.at (id1)
	end

	new_prescription(id_rx : INTEGER; id_md : INTEGER; id_pt : INTEGER)
	local
--		a_doctor : PHYSICIANS
--		a_patient : PATIENT

	do
--		a_patient :=  patients.at (id_pt)
--	    a_doctor := physicians.at (id_md)
--		check
--		attached patients.at (id_pt) as a_patient
--			then
--				check
--					attached physicians.at (id_md) as a_doctor
--					then
--						
--				end
--				
--		end

	end
	add_medicine(id: INTEGER; medicine:INTEGER; dose: VALUE)
	do

	end


feature -- model operations
	default_update
			-- Perform update to the model state.
		do
			i := i + 1
		end

	reset
			-- Reset model state.
		do
			make
		end

feature -- queries
	out : STRING
		do
			create Result.make_from_string ("  ")
			Result.append ("System State: default model state ")
			Result.append ("(")
			Result.append (i.out)
			Result.append (")")
		end

end




