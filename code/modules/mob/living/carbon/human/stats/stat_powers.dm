/mob/living/carbon/human/verb/view_stats()
	set name = "View VAIB stats"
	set category = "IC"

	var/output = "<B>[src.real_name]'s VAIB stats</B><HR>"

	for(var/decl/stat/stat in stats)
		output += "[stat.name] - [stats[stat]]<br>"

	show_browser(src, output,"window=stats")
