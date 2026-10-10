# Public API: as the player, add a positive amount to clawther_gem_add, then call this.
# Mail persists its executing journal before calling; interrupted Mail entries never auto-replay.
execute unless entity @s[type=minecraft:player] run return 0
scoreboard players add @s clawther_gem 0
scoreboard players add @s clawther_gem_add 0
execute unless score @s clawther_gem matches 0.. run return 0
execute unless score @s clawther_gem_add matches 0.. run return 0
scoreboard players set #room clawther_gem_add 2147483647
scoreboard players operation #room clawther_gem_add -= @s clawther_gem
execute if score @s clawther_gem_add > #room clawther_gem_add run return 0
execute if score @s clawther_gem_add matches 0 run return 1
scoreboard players operation @s clawther_gem += @s clawther_gem_add
tellraw @s {"translate":"message.scr.clawther_gem.received","fallback":"获得 %s 翎钻，当前余额：%s。","with":[{"score":{"name":"@s","objective":"clawther_gem_add"}},{"score":{"name":"@s","objective":"clawther_gem"}}],"color":"aqua"}
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1
scoreboard players set @s clawther_gem_add 0
return 1
