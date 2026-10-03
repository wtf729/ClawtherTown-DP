execute if score @s star_realm_challenge_i_load <= @s star_realm_challenge_i_progress run function scr:dimension/star_realm/challenge/challenge_i/load_success
execute unless score @s star_realm_challenge_i_load <= @s star_realm_challenge_i_progress run function scr:dimension/star_realm/challenge/challenge_i/load_fail




scoreboard players set @s star_realm_challenge_i_load 0