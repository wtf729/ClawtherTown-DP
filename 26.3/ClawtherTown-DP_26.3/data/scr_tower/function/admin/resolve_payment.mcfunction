# Explicit human audit only. paid:1 confirms debit; paid:0 confirms no debit.
# Current balance must equal the recorded expected balance. This never alters wallet.
execute store result score #ok scr_tw run function scr_tower:context/open
execute unless score #ok scr_tw matches 1 run return 0
execute unless data storage scr_tower:runtime p.run{phase:"paying"} run return 0
execute store result score #before scr_tw run data get storage scr_tower:runtime p.run.payment.before
execute store result score #cost scr_tw run data get storage scr_tower:runtime p.run.payment.cost
$scoreboard players set #confirmed scr_tw $(paid)
execute if score #confirmed scr_tw matches 0 if score @s clawther_gem = #before scr_tw run return run function scr_tower:admin/payment_not_applied
execute unless score #confirmed scr_tw matches 1 run return 0
scoreboard players operation #before scr_tw -= #cost scr_tw
execute unless score @s clawther_gem = #before scr_tw run return 0
execute store result score #paid scr_tw run data get storage scr_tower:runtime p.run.paid
scoreboard players operation #paid scr_tw += #cost scr_tw
execute store result storage scr_tower:runtime p.run.paid int 1 run scoreboard players get #paid scr_tw
data modify storage scr_tower:runtime p.run.payment.state set value "admin_confirmed"
return run function scr_tower:continue/remove with storage scr_tower:runtime p.run
