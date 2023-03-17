#if !defined(USING_MAP_DATUM)
	#include "combat.dmm"

	#define USING_MAP_DATUM /datum/map/combat

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring combat!

#endif
