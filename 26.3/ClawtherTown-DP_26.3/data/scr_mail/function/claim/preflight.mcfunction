data modify storage scr_mail:runtime work.free set value []
# A title function can mutate stage. Reject an ambiguous stage/function combination before ANY payout.
execute if data storage scr_mail:runtime work.mail.rewards[{handler:"function",parameters:{id:"scr_mail:unlock/title_stage_2"}}] if data storage scr_mail:runtime work.mail.rewards[{handler:"scoreboard",parameters:{objective:"stage"}}] run return 0
execute unless items entity @s hotbar.0 * run data modify storage scr_mail:runtime work.free append value {slot:"hotbar.0"}
execute unless items entity @s hotbar.1 * run data modify storage scr_mail:runtime work.free append value {slot:"hotbar.1"}
execute unless items entity @s hotbar.2 * run data modify storage scr_mail:runtime work.free append value {slot:"hotbar.2"}
execute unless items entity @s hotbar.3 * run data modify storage scr_mail:runtime work.free append value {slot:"hotbar.3"}
execute unless items entity @s hotbar.4 * run data modify storage scr_mail:runtime work.free append value {slot:"hotbar.4"}
execute unless items entity @s hotbar.5 * run data modify storage scr_mail:runtime work.free append value {slot:"hotbar.5"}
execute unless items entity @s hotbar.6 * run data modify storage scr_mail:runtime work.free append value {slot:"hotbar.6"}
execute unless items entity @s hotbar.7 * run data modify storage scr_mail:runtime work.free append value {slot:"hotbar.7"}
execute unless items entity @s hotbar.8 * run data modify storage scr_mail:runtime work.free append value {slot:"hotbar.8"}
execute unless items entity @s inventory.0 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.0"}
execute unless items entity @s inventory.1 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.1"}
execute unless items entity @s inventory.2 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.2"}
execute unless items entity @s inventory.3 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.3"}
execute unless items entity @s inventory.4 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.4"}
execute unless items entity @s inventory.5 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.5"}
execute unless items entity @s inventory.6 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.6"}
execute unless items entity @s inventory.7 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.7"}
execute unless items entity @s inventory.8 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.8"}
execute unless items entity @s inventory.9 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.9"}
execute unless items entity @s inventory.10 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.10"}
execute unless items entity @s inventory.11 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.11"}
execute unless items entity @s inventory.12 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.12"}
execute unless items entity @s inventory.13 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.13"}
execute unless items entity @s inventory.14 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.14"}
execute unless items entity @s inventory.15 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.15"}
execute unless items entity @s inventory.16 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.16"}
execute unless items entity @s inventory.17 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.17"}
execute unless items entity @s inventory.18 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.18"}
execute unless items entity @s inventory.19 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.19"}
execute unless items entity @s inventory.20 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.20"}
execute unless items entity @s inventory.21 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.21"}
execute unless items entity @s inventory.22 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.22"}
execute unless items entity @s inventory.23 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.23"}
execute unless items entity @s inventory.24 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.24"}
execute unless items entity @s inventory.25 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.25"}
execute unless items entity @s inventory.26 * run data modify storage scr_mail:runtime work.free append value {slot:"inventory.26"}
data modify storage scr_mail:runtime work.forecast set value {}
data modify storage scr_mail:runtime work.plans set value []
scoreboard players set #needed scr_ml_n 0
scoreboard players set #reward scr_ml_n 0
execute store result score #count scr_ml_n run data get storage scr_mail:runtime work.mail.rewards
execute unless score #count scr_ml_n matches 1..32 run return 0
execute store result score #ok scr_ml_ok run function scr_mail:claim/preflight_loop
execute unless score #ok scr_ml_ok matches 1 run return 0
execute store result score #free scr_ml_n run data get storage scr_mail:runtime work.free
execute if score #needed scr_ml_n > #free scr_ml_n run return 0
return 1
