data remove storage scr_tower:runtime button.action
data modify storage scr_tower:runtime button.label.color set value "gray"
data modify storage scr_tower:runtime dialog.actions append from storage scr_tower:runtime button
return 0
