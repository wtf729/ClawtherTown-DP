# Selector state is authoritative; Survival is a last-resort fallback only.
data modify storage scr_profile:runtime work.sample.gamemode set value 0
execute if entity @s[gamemode=creative] run data modify storage scr_profile:runtime work.sample.gamemode set value 1
execute if entity @s[gamemode=adventure] run data modify storage scr_profile:runtime work.sample.gamemode set value 2
execute if entity @s[gamemode=spectator] run data modify storage scr_profile:runtime work.sample.gamemode set value 3
return 1
