$execute unless data storage scr_sky:players players."$(key)" run return 0
scoreboard players add #cd_players scr_sk 1
$execute if data storage scr_sky:players players."$(key)".last_claim_started run scoreboard players add #cd_fields scr_sk 1
$data remove storage scr_sky:players players."$(key)".last_claim_started
