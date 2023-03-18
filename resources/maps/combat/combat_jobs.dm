/datum/map/combat
	allowed_jobs = list(/datum/job/prisoner)

/// Prisoner job!
/datum/job/prisoner
	title = "Prisoner"
	department = "Civilian"
	department_flag = CIV
	total_positions = -1
	spawn_positions = -1
	supervisors = "the concrete jungle"
	selection_color = "#FFA500"
	outfit_type = /decl/hierarchy/outfit/job/prisoner

/// The prisoner drip
/decl/hierarchy/outfit/job/prisoner
	name = OUTFIT_JOB_NAME("Prisoner")
	uniform = /obj/item/clothing/under/color/orange
	shoes = /obj/item/clothing/shoes/orange
	pda_type = /obj/item/modular_computer/pda
	id_type = /obj/item/weapon/card/id

/datum/job/assistant
	total_positions = 0
	spawn_positions = 0