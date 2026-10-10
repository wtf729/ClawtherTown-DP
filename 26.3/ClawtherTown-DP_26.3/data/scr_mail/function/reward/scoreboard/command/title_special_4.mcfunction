# The public operation is add/set. Applying its frozen absolute result avoids arithmetic replay.
$scoreboard players set @s title_special_4 $(after)
$execute unless score @s title_special_4 matches $(after) run return 0
return 1
