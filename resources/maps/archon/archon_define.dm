/// The Sol Unified Authority Registered Ship Archon
/datum/map/archon
	name = "Archon"
	full_name = "SUARS Archon"
	path = "archon"

	station_levels = list(1,2,3)
	contact_levels = list(1,2,3)
	player_levels = list(1,2,3)
	admin_levels = list(4)

	use_overmap = 1
	overmap_size = 35
	overmap_event_areas = 18

	allowed_spawns = list(
		"Cryogenic Storage",
		"Cyborg Storage"
	)
	default_spawn = "Cryogenic Storage"

	station_name = "SUARS Archon"
	station_short = "Archon"

	dock_name = "Sarajevan Gonggong Docking Post"
	boss_name = "Fleet Auxiliary Command"
	boss_short = "AuxCom"
	company_name	= "Registered Shipmasters Federal Corporation"
	company_short = "MasterCo"

	map_admin_faxes = list("MasterCo Exosolar Traffic Department")
