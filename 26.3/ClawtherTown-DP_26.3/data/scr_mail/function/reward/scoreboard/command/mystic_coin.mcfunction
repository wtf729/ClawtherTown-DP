# The public operation is add/set. Applying its frozen absolute result avoids arithmetic replay.
$scoreboard players set @s mystic_coin $(after)
$execute unless score @s mystic_coin matches $(after) run return 0
return 1
