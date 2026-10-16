# Match Mail navigation: always reserve previous/next in the same two columns.
# Disabled slots have no action and allocate no route/token.
execute if score #page scr_tw matches 1.. run function scr_tower:ui/pending/previous
execute unless score #page scr_tw matches 1.. run data modify storage scr_tower:runtime dialog.actions append value {"label":{"translate":"gui.scr.tower.previous_page","color":"dark_gray"},"width":170}
execute if score #page scr_tw < #max_page scr_tw run function scr_tower:ui/pending/next
execute unless score #page scr_tw < #max_page scr_tw run data modify storage scr_tower:runtime dialog.actions append value {"label":{"translate":"gui.scr.tower.next_page","color":"dark_gray"},"width":170}
