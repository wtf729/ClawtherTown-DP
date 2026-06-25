tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------\n","color":"dark_gray"},{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"鹰翎镇的收藏都在这儿了!   ","color":"yellow"},{"text":"(第 1 页 / 共 2 页)","color":"gold"}]}

tellraw @s {"text":"","extra":[{"text":"   0001. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0001","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50001"}}]}

tellraw @s {"text":"","extra":[{"text":"   0002. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0002","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50002"}}]}

tellraw @s {"text":"","extra":[{"text":"   0003. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0003","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50003"}}]}

tellraw @s {"text":"","extra":[{"text":"   0004. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0004","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50004"}}]}

tellraw @s {"text":"","extra":[{"text":"   0005. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0005","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50005"}}]}

tellraw @s {"text":"","extra":[{"text":"   0006. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0006","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50006"}}]}

tellraw @s {"text":"","extra":[{"text":"   0007. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0007","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50007"}}]}

tellraw @s {"text":"","extra":[{"text":"   0008. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0008","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50008"}}]}

tellraw @s {"text":"","extra":[{"text":"   0009. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0009","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50009"}}]}

tellraw @s {"text":"","extra":[{"text":"   0010. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0010","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50010"}}]}

tellraw @s {"text":"","extra":[{"text":"   > ","color":"light_purple"},{"text":"上一页","color":"dark_gray"},{"text":"         > ","color":"light_purple"},{"text":"下一页","underlined":true,"color":"aqua","click_event":{"action":"run_command","command":"/trigger gallery set 5002"}}]}



tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------","color":"dark_gray"}]}

playsound minecraft:ui.button.click ambient @s ~ ~ ~
scoreboard players set @s gallery 0