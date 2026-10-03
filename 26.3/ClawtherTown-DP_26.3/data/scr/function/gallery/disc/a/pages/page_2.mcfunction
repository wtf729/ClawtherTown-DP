tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------\n","color":"dark_gray"},{"text":"[","color":"gold","bold":true},{"text":"神鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"鹰翎镇的收藏都在这儿了!   ","color":"yellow"},{"text":"(第 2 页 / 共 2 页)","color":"gold"}]}

tellraw @s {"text":"","extra":[{"text":"   0011. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0011","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50011"}}]}

tellraw @s {"text":"","extra":[{"text":"   0012. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0012","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50012"}}]}

tellraw @s {"text":"","extra":[{"text":"   0013. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0013","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50013"}}]}

tellraw @s {"text":"","extra":[{"text":"   0014. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0014","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50014"}}]}

tellraw @s {"text":"","extra":[{"text":"   0015. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0015","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50015"}}]}

tellraw @s {"text":"","extra":[{"text":"   0016. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0016","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50016"}}]}

tellraw @s {"text":"","extra":[{"text":"   0017. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0017","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50017"}}]}

tellraw @s {"text":"","extra":[{"text":"   0018. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0018","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50018"}}]}

tellraw @s {"text":"","extra":[{"text":"   0019. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0019","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50019"}}]}

tellraw @s {"text":"","extra":[{"text":"   0020. ","color":"#9b79ec"},{"translate":"jukebox_song.scr.a_0020","underlined":true,"color":"#f0d26e","click_event":{"action":"run_command","command":"/trigger gallery set 50020"}}]}

tellraw @s {"text":"","extra":[{"text":"   > ","color":"light_purple"},{"text":"上一页","underlined":true,"color":"aqua","click_event":{"action":"run_command","command":"/trigger gallery set 5001"}},{"text":"         > ","color":"light_purple"},{"text":"下一页","color":"dark_gray"}]}



tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------","color":"dark_gray"}]}

playsound minecraft:ui.button.click ambient @s ~ ~ ~
scoreboard players set @s gallery 0