/datum/gear/suit/blueapron
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/suit/overalls
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/suit/medcoat
	allowed_roles = MEDICAL_ROLES

/datum/gear/suit/trenchcoat
	allowed_roles = RESTRICTED_ROLES

/datum/gear/suit/poncho
	allowed_roles = RESTRICTED_ROLES

/datum/gear/suit/security_poncho
	allowed_roles = list(/datum/job/guard, /datum/job/merchant)

/datum/gear/suit/medical_poncho
	allowed_roles = list(/datum/job/doctor_contractor, /datum/job/psychiatrist, /datum/job/roboticist, /datum/job/merchant)

/datum/gear/suit/engineering_poncho
	allowed_roles = list(/datum/job/engineer_contractor, /datum/job/roboticist, /datum/job/merchant)

/datum/gear/suit/science_poncho
	allowed_roles = list(/datum/job/scientist, /datum/job/scientist_assistant, /datum/job/merchant)

/datum/gear/suit/cargo_poncho
	allowed_roles = list(/datum/job/cargo_contractor, /datum/job/merchant)

/datum/gear/suit/suit_jacket
	display_name = "suit jackets"
	path = /obj/item/clothing/suit/storage
	allowed_roles = FORMAL_ROLES

/datum/gear/suit/custom_suit_jacket
	allowed_roles = FORMAL_ROLES

/datum/gear/suit/hoodie
	allowed_roles = RESTRICTED_ROLES

/datum/gear/suit/hoodie_sel
	allowed_roles = RESTRICTED_ROLES

/datum/gear/suit/labcoat
	allowed_roles = STERILE_ROLES

/datum/gear/suit/coat
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/suit/leather
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/suit/wintercoat
	allowed_roles = RESTRICTED_ROLES

/datum/gear/suit/track
	allowed_roles = RESTRICTED_ROLES
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/tactical/pcarrier
	allowed_roles = ARMORED_ROLES