function scr:soul/soul_multiplier

scoreboard players add @s soul_add 100
scoreboard players set @s item_consume_soul 40
scoreboard players set @s item_consume_cold_down 60

scoreboard players set @s[scores={clawther_coin_add=1..}] item_consume_clawther_coin 40

advancement grant @s only scr:soul

function scr:soul/actionbar