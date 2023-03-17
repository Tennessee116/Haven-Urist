/mob/living/carbon/human
	/// When false, all stat-related functions are overriden and stats are not generated.
	var/stat_user = TRUE
	/// The actual list of stats
	var/list/stats = list()

/// A generic stat.
/decl/stat
	/// Self-explanatory.
	var/name = "mental illness"
	/// Determines whether or not it always spawns upon a human getting stats.
	var/always_spawn = TRUE

/decl/stat/vigilance
	name = "vigilance"

/decl/stat/aptitude
	name = "aptitude"

/decl/stat/intelligence
	name = "intelligence"

/decl/stat/body
	name = "body"
