tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------\n","color":"dark_gray"},{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"鹰翎镇的收藏都在这儿了!   ","color":"yellow"},{"text":"(第 3 页 / 共 3 页)","color":"gold"}]}

tellraw @s {"text":"","extra":[{"text":"      0021. ","color":"#9b79ec"},{"translate":"painting.scr.a_0021.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10021"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0021.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0022. ","color":"#9b79ec"},{"translate":"painting.scr.a_0022.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10022"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0022.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0023. ","color":"#9b79ec"},{"translate":"painting.scr.a_0023.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10023"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0023.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0024. ","color":"#9b79ec"},{"translate":"painting.scr.a_0024.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10024"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0024.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0025. ","color":"#9b79ec"},{"translate":"painting.scr.a_0025.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10025"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0025.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0026. ","color":"#9b79ec"},{"translate":"painting.scr.a_0026.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10026"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0026.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0027. ","color":"#9b79ec"},{"translate":"painting.scr.a_0027.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10027"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0027.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0028. ","color":"#9b79ec"},{"translate":"painting.scr.a_0028.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10028"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0028.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0029. ","color":"#9b79ec"},{"translate":"painting.scr.a_0029.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10029"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0029.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0030. ","color":"#9b79ec"},{"translate":"painting.scr.a_0030.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10030"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0030.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      > ","color":"light_purple"},{"text":"上一页","underlined":true,"color":"aqua","click_event":{"action":"run_command","command":"/trigger gallery set 1002"}},{"text":"         > ","color":"light_purple"},{"text":"下一页","underlined":false,"color":"gray"}]}



tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------","color":"dark_gray"}]}

playsound minecraft:ui.button.click ambient @s ~ ~ ~
scoreboard players set @s gallery 0