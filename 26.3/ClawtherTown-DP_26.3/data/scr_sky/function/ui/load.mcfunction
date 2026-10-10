data modify storage scr_sky:ui sessions set value {}
data modify storage scr_sky:ui template set value {"type":"minecraft:multi_action","title":{"translate":"gui.scr.sky.title","fallback":"空岛","color":"white"},"body":[],"actions":[],"columns":2,"pause":false,"after_action":"none","exit_action":{"label":{"translate":"gui.scr.sky.exit","fallback":"退出空岛面板","color":"white"},"action":{"type":"minecraft:run_command","command":"/trigger sky_action set -1"}}}
scoreboard players enable @a sky_action
scoreboard players enable @a is
