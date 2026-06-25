tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------\n","color":"dark_gray"},{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"鹰翎镇的收藏都在这儿了!   ","color":"yellow"},{"text":"(第 1 页 / 共 1 页)","color":"gold"}]}

tellraw @s {"text":"","extra":[{"text":"      0001. ","color":"#9b79ec"},{"translate":"painting.scr.c_0001.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 30001"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.c_0001.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0002. ","color":"#9b79ec"},{"translate":"painting.scr.c_0002.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 30002"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.c_0002.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0003. ","color":"#9b79ec"},{"translate":"painting.scr.c_0003.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 30003"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.c_0003.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0004. ","color":"#9b79ec"},{"translate":"painting.scr.c_0004.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 30004"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.c_0004.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0005. ","color":"#9b79ec"},{"translate":"painting.scr.c_0005.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 30005"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.c_0005.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0006. ","color":"#9b79ec"},{"translate":"painting.scr.c_0006.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 30006"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.c_0006.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0007. ","color":"#9b79ec"},{"translate":"painting.scr.c_0007.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 30007"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.c_0007.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0008. ","color":"#9b79ec"},{"translate":"painting.scr.c_0008.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 30008"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.c_0008.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0009. ","color":"#9b79ec"},{"translate":"painting.scr.c_0009.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 30009"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.c_0009.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0010. ","color":"#9b79ec"},{"translate":"painting.scr.c_0010.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 30010"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.c_0010.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      > ","color":"light_purple"},{"text":"上一页","color":"dark_gray"},{"text":"         > ","color":"light_purple"},{"text":"下一页","color":"dark_gray"}]}



tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------","color":"dark_gray"}]}

playsound minecraft:ui.button.click ambient @s ~ ~ ~
scoreboard players set @s gallery 0