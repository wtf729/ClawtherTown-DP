execute unless data storage scr_tower:runtime p.run{phase:"danger"} run return 0
execute store result score #cost scr_tw run data get storage scr_tower:runtime p.run.cost
execute unless score #cost scr_tw matches 2..320 run return 0
execute unless data storage scr_tower:runtime p.run{debug:1} unless score @s clawther_gem >= #cost scr_tw run return 0
data modify storage scr_tower:runtime p.run.payment set value {state:"executing",before:0,after:0,cost:0}
execute store result storage scr_tower:runtime p.run.payment.before int 1 run scoreboard players get @s clawther_gem
data modify storage scr_tower:runtime p.run.payment.cost set from storage scr_tower:runtime p.run.cost
data modify storage scr_tower:runtime p.run.phase set value "paying"
execute store result score #ok scr_tw run function scr_tower:save
execute unless score #ok scr_tw matches 1 run return 0
# No temporary gems are read here. Do not replay an interrupted debit.
execute unless data storage scr_tower:runtime p.run{debug:1} run scoreboard players operation @s clawther_gem -= #cost scr_tw
execute store result storage scr_tower:runtime p.run.payment.after int 1 run scoreboard players get @s clawther_gem
execute store result score #expected scr_tw run data get storage scr_tower:runtime p.run.payment.before
scoreboard players operation #expected scr_tw -= #cost scr_tw
execute unless data storage scr_tower:runtime p.run{debug:1} unless score @s clawther_gem = #expected scr_tw run return 0
execute store result score #paid scr_tw run data get storage scr_tower:runtime p.run.paid
scoreboard players operation #paid scr_tw += #cost scr_tw
execute store result storage scr_tower:runtime p.run.paid int 1 run scoreboard players get #paid scr_tw
data modify storage scr_tower:runtime p.run.payment.state set value "done"
return run function scr_tower:continue/remove with storage scr_tower:runtime p.run
