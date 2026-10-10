data modify storage scr_sky:ui work.name set value {"translate":"gui.scr.sky.unknown_name","fallback":"未知玩家","color":"white"}
$execute if data storage scr_sky:players players."$(target)".last_known_name run data modify storage scr_sky:ui work.name set from storage scr_sky:players players."$(target)".last_known_name
