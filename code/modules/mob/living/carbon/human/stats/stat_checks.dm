/// Performs a raw stat check. Checks a stat against a target value.
/mob/living/carbon/human/proc/check_stat(decl/stat/target, target_value)
	if(stat_user)
		var/success = FALSE
		if(stats[target] >= target_value)
			success = TRUE

		to_chat(src, SPAN_NOTICE("Your [target.name] [success ? "comes through" : "fails you"]!"))
		return success
	else
		return TRUE

/// Returns prob() based on a stat's value.
/mob/living/carbon/human/proc/prob_stat(decl/stat/target)
	if(stat_user)
		var/success = prob(10 * stats[target] * (health/100))
		to_chat(src, SPAN_NOTICE("Your [target.name] [success ? "comes through" : "fails you"]!"))
		return success
	else
		return prob(50)

/// Returns a stat value modified by the source's health.
/mob/living/carbon/human/proc/health_stat(decl/stat/target, modifier = 1, input_value)
	if(stat_user)
		if(!input_value)
			input_value = stats[target] * modifier

		var/health_stat = (stats[target] * max(0, (health/200)) - weakened - getBruteLoss()*0.5 - getFireLoss()*0.5) * modifier
		to_chat(src, SPAN_NOTICE("Your [target.name] [health_stat >=  input_value ? "comes through" : "fails you"]!"))
		return health_stat
	else
		return input_value
