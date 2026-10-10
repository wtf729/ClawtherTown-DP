# The public operation is add/set. Applying its frozen absolute result avoids arithmetic replay.
$scoreboard players set @s dream_wing $(after)
$execute unless score @s dream_wing matches $(after) run return 0
execute if score @s dream_wing matches 1.. if score #before scr_ml_n < @s dream_wing run function scr_task:event/wing_received
return 1
