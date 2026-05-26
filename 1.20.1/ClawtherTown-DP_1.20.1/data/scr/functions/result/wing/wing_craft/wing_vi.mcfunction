execute as @a at @s run playsound scr:ui.cs_reveal_04 ambient @s ~ ~ ~ 0.7 1

tellraw @a {"text":"","extra":[{"selector":"@s"},{"text":"将鹰翎融合后，获得了","color":"aqua"},{"text":" [神鹰羽翼] ","color":"red","bold":true},{"text":"!","color":"aqua"}]}

function scr:result/wing/wing_only/wing_vi

function scr:random/random100000