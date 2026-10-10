# Shared display adapter; no island-name editing is provided.
data modify storage scr_sky:ui work.number.n set from storage scr_sky:ui work.name_island.id
function scr_sky:ui/string_number with storage scr_sky:ui work.number
data modify storage scr_sky:ui work.island_name set value {"translate":"gui.scr.sky.island","fallback":"空岛 #%s","color":"white","with":[{"text":""}]}
data modify storage scr_sky:ui work.island_name.with[0].text set from storage scr_sky:ui work.number_text
execute if data storage scr_sky:ui work.name_island.display_name run data modify storage scr_sky:ui work.island_name set from storage scr_sky:ui work.name_island.display_name

function scr_sky:ui/island_name_stored with storage scr_sky:ui work.name_island
