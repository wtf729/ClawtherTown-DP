execute store result score #audio_amount scr_tw run data get storage scr_tower:runtime selected.reward.parameters.amount
execute store result score #audio_precious scr_tw run data get storage scr_tower:audio rules.precious_gems
execute if score #audio_amount scr_tw >= #audio_precious scr_tw run scoreboard players set #award_tier scr_tw 2
