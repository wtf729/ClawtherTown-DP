# The public operation is add/set. Applying its frozen absolute result avoids arithmetic replay.
$scoreboard players set @s soul $(after)
$execute unless score @s soul matches $(after) run return 0
return 1
