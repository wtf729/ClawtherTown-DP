# Main is an open-ended fallback; later matching special predicates take precedence.
scoreboard players set @s scr_pf_target 1
execute if predicate scr_profile:profile/building run scoreboard players set @s scr_pf_target 2
execute if predicate scr_profile:profile/memory run scoreboard players set @s scr_pf_target 3
execute if predicate scr_profile:profile/star run scoreboard players set @s scr_pf_target 4
execute if predicate scr_profile:profile/sky run scoreboard players set @s scr_pf_target 5
