scoreboard players set #can_pay scr_tw 0
execute store result score #cost scr_tw run data get storage scr_tower:runtime p.run.cost
execute if score #wallet scr_tw >= #cost scr_tw run scoreboard players set #can_pay scr_tw 1
execute if data storage scr_tower:runtime p.run{debug:1} run scoreboard players set #can_pay scr_tw 1
