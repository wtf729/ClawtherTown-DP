# Read-only equivalent of the existing Profile router; never writes scr_pf_target.
scoreboard players set #profile scr_shop 1
execute at @s if predicate scr_profile:profile/building run scoreboard players set #profile scr_shop 2
execute at @s if predicate scr_profile:profile/memory run scoreboard players set #profile scr_shop 3
execute at @s if predicate scr_profile:profile/star run scoreboard players set #profile scr_shop 4
execute at @s if predicate scr_profile:profile/sky run scoreboard players set #profile scr_shop 5
