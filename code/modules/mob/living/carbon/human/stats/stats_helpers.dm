/// Assigns stats. If the human isn't a stat user, skips.
/mob/living/carbon/human/proc/assign_stats()
	if(stat_user)
		var/stat_well = 15
		for(var/stat_path in subtypesof(/decl/stat))
			var/decl/stat/assign_stat = decls_repository.get_decl(stat_path)
			if(assign_stat in stats || !assign_stat.always_spawn)
				continue
			else
				var/allocation = rand(0, 8)
				while(allocation > stat_well)
					allocation--

				stats[assign_stat] = allocation
				stat_well -= allocation
	else
		return

/// Changes a stat.
/mob/living/carbon/human/proc/change_stat(decl/stat/target, new_value)
	if(!target)
		target = input(src, "Which stat do you want to change?", "Change a stat", null) in stats
		if(!target || !istype(target, /decl/stat))
			to_chat(src, SPAN_WARNING("No stat changed."))
			return FALSE

	if(!new_value)
		new_value = input(src, "What do you want to set [target.name] to?", "Change [target.name]", stats[target]) as null|num
		if(!new_value)
			to_chat(src, SPAN_WARNING("No stat changed."))
			return FALSE

	if(stats[target] == new_value)
		to_chat(src, SPAN_WARNING("You feel a useless shift in your [target.name]."))
		return FALSE

	to_chat(src, SPAN_WARNING("Your [target.name] has [new_value >= stats[target] ? "improved" : "worsened"]."))
	stats[target] = new_value
	return TRUE

/// Updates live_stats.
/mob/living/carbon/human/proc/live_stat()
	if(stat_user)
		for(var/decl/stat/assigned_stat in stats)
			live_stats[assigned_stat] = assigned_stat.live_stat(src)
	else
		return