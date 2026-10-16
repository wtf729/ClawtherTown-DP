# Keep list indices and all pre-generated rewards. Never call generate or next here.
$data modify storage scr_tower:runtime p.run.cards[$(hit)].removed set value 1
data modify storage scr_tower:runtime p.run.phase set value "safe"
execute store result score #continued_saved scr_tw run function scr_tower:save
execute if score #continued_saved scr_tw matches 1 run execute at @s run playsound scr:ui.eft_insured ambient @s ~ ~ ~ 1 1
return run scoreboard players get #continued_saved scr_tw
