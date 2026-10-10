# Runtime objectives are caches; persistent ownership lives under the player's UUID key.
scoreboard objectives add scr_pf_init dummy
scoreboard objectives add scr_pf_cur dummy
scoreboard objectives add scr_pf_target dummy
scoreboard objectives add scr_pf_lock dummy
scoreboard objectives add scr_pf_phase dummy
scoreboard objectives add scr_pf_ok dummy
scoreboard objectives add scr_pf_tmp dummy
scoreboard players set #busy scr_pf_lock 0
data remove storage scr_profile:runtime work
# Clean only our loaded, non-dropping adapters. Never reset player locks on reload.
kill @e[type=minecraft:item_display,tag=scr_profile.adapter]
