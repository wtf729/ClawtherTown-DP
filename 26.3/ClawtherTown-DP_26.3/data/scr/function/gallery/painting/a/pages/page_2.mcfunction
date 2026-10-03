tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------\n","color":"dark_gray"},{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"鹰翎镇的收藏都在这儿了!   ","color":"yellow"},{"text":"(第 2 页 / 共 3 页)","color":"gold"}]}

tellraw @s {"text":"","extra":[{"text":"      0011. ","color":"#9b79ec"},{"translate":"painting.scr.a_0011.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10011"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0011.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0012. ","color":"#9b79ec"},{"translate":"painting.scr.a_0012.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10012"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0012.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0013. ","color":"#9b79ec"},{"translate":"painting.scr.a_0013.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10013"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0013.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0014. ","color":"#9b79ec"},{"translate":"painting.scr.a_0014.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10014"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0014.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0015. ","color":"#9b79ec"},{"translate":"painting.scr.a_0015.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10015"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0015.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0016. ","color":"#9b79ec"},{"translate":"painting.scr.a_0016.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10016"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0016.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0017. ","color":"#9b79ec"},{"translate":"painting.scr.a_0017.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10017"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0017.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0018. ","color":"#9b79ec"},{"translate":"painting.scr.a_0018.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10018"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0018.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0019. ","color":"#9b79ec"},{"translate":"painting.scr.a_0019.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10019"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0019.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      0020. ","color":"#9b79ec"},{"translate":"painting.scr.a_0020.title","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 10020"}},{"text":" - ","color":"dark_gray"},{"translate":"painting.scr.a_0020.author","color":"gray"}]}

tellraw @s {"text":"","extra":[{"text":"      > ","color":"light_purple"},{"text":"上一页","underlined":true,"color":"aqua","click_event":{"action":"run_command","command":"/trigger gallery set 1001"}},{"text":"         > ","color":"light_purple"},{"text":"下一页","underlined":true,"color":"aqua","click_event":{"action":"run_command","command":"/trigger gallery set 1003"}}]}



tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------","color":"dark_gray"}]}

playsound minecraft:ui.button.click ambient @s ~ ~ ~
scoreboard players set @s gallery 0