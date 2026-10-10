scoreboard players operation #secs scr_sk = #cd_remaining scr_sk
scoreboard players add #secs scr_sk 19
scoreboard players set #twenty scr_sk 20
scoreboard players operation #secs scr_sk /= #twenty scr_sk
scoreboard players operation #mins scr_sk = #secs scr_sk
scoreboard players set #sixty scr_sk 60
scoreboard players operation #mins scr_sk /= #sixty scr_sk
scoreboard players operation #secs scr_sk %= #sixty scr_sk
execute store result storage scr_sky:ui work.clock.minutes int 1 run scoreboard players get #mins scr_sk
execute store result storage scr_sky:ui work.clock.seconds int 1 run scoreboard players get #secs scr_sk
function scr_sky:ui/cooldown_digits with storage scr_sky:ui work.clock
