/mob/living/carbon/human
	/// When false, all stat-related functions are overriden and stats are not generated.
	var/stat_user = TRUE
	/// The base stats from spawn.
	var/list/stats = list()
	/// The list of live stats being used in-game.
	var/list/live_stats = list()

/// A generic stat.
/decl/stat
	/// Self-explanatory.
	var/name = "mental illness"
	/// Determines whether or not it always spawns upon a human getting stats.
	var/always_spawn = TRUE

/decl/stat/proc/live_stat(mob/living/carbon/human/user)
	return user.stats[src]

/decl/stat/vigilance
	name = "vigilance"

/decl/stat/aptitude
	name = "aptitude"

/decl/stat/intelligence
	name = "intelligence"

/decl/stat/body
	name = "body"
