/mob/living/carbon/human/verb/view_stats()
	set name = "View VAIB stats"
	set category = "IC"

	var/output = "<B>[src.real_name]'s VAIB stats</B><HR>"
	output += "<i>Stat - Set value - Live value</i><br>"

	for(var/decl/stat/stat in stats)
		output += "[capitalize(stat.name)] - [stats[stat]] - [live_stats[stat]]<br>"

	show_browser(src, output,"window=stats;size=360x200")
