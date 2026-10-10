# Only undo a mode managed by this module, inside the existing Sky Profile.
execute if entity @s[gamemode=adventure] run gamemode survival @s
scoreboard players set @s scr_sk_mode 0
scoreboard players set @s scr_sk_id 0
scoreboard players set @s scr_sk_role 0
