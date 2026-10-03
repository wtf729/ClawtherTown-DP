tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------\n","color":"dark_gray"},{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"鹰翎镇的收藏都在这儿了!   ","color":"yellow"},{"text":"(第 1 页 / 共 1 页)","color":"gold"}]}

tellraw @s {"text":"","extra":[{"text":"      0001. ","color":"#9b79ec"},{"translate":"painting.scr.d_0001.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 40001"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.d_0001.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0002. ","color":"#9b79ec"},{"translate":"painting.scr.empty.title","underlined":false,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 40002"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.empty.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0003. ","color":"#9b79ec"},{"translate":"painting.scr.empty.title","underlined":false,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 40003"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.empty.title","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0004. ","color":"#9b79ec"},{"translate":"painting.scr.empty.title","underlined":false,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 40004"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.empty.title","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0005. ","color":"#9b79ec"},{"translate":"painting.scr.empty.title","underlined":false,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 40005"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.empty.title","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0006. ","color":"#9b79ec"},{"translate":"painting.scr.empty.title","underlined":false,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 40006"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.empty.title","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0007. ","color":"#9b79ec"},{"translate":"painting.scr.empty.title","underlined":false,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 40007"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.empty.title","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0008. ","color":"#9b79ec"},{"translate":"painting.scr.empty.title","underlined":false,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 40008"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.empty.title","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0009. ","color":"#9b79ec"},{"translate":"painting.scr.empty.title","underlined":false,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 40009"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.empty.title","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0010. ","color":"#9b79ec"},{"translate":"painting.scr.empty.title","underlined":false,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 40010"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.empty.title","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      > ","color":"light_purple"},{"text":"上一页","color":"dark_gray"},{"text":"         > ","color":"light_purple"},{"text":"下一页","color":"dark_gray"}]}



tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------","color":"dark_gray"}]}

playsound minecraft:ui.button.click ambient @s ~ ~ ~
scoreboard players set @s gallery 0