/// Performs a raw stat check. Checks a stat against a target value.
/mob/living/carbon/human/proc/check_stat(decl/stat/target, target_value)
	if(stat_user)
		var/success = FALSE

		if(stats[target] >= target_value)
			success = TRUE
			to_chat(src, SPAN_NOTICE("Your [target.name] comes through!"))

		return success
	else
		return TRUE

/// Returns prob() based on a stat's value.
/mob/living/carbon/human/proc/prob_stat(decl/stat/target)
	if(stat_user)
		var/success = prob(10 * stats[target] * (health/100))

		if(success)
			to_chat(src, SPAN_NOTICE("Your [target.name] comes through!"))

		return success
	else
		return prob(50)

/// Returns a stat value modified by the source's health.
/mob/living/carbon/human/proc/health_stat(decl/stat/target, target_value)
	if(stat_user)
		if(!target_value)
			target_value = stats[target]

		var/health_stat = (stats[target] * max(0, (health/200)) - weakened - getBruteLoss()*0.1 - getFireLoss()*0.1)

		if(health_stat > target_value)
			to_chat(src, SPAN_NOTICE("Your [target.name] comes through!"))

		return health_stat
	else
		return target_value
