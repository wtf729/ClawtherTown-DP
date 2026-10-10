# Entity tags follow the player's UUID, whereas score holders use player names.
# A different UUID reusing a name must not inherit that name's runtime cache.
scoreboard players set @s scr_pf_init 0
scoreboard players set @s scr_pf_cur 0
scoreboard players set @s scr_pf_lock 0
scoreboard players set @s scr_pf_phase 0
tag @s add scr_profile.bound
