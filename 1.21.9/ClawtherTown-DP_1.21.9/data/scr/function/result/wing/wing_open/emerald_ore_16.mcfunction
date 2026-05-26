playsound scr:ui.cs_awarded_04 ambient @a ~ ~ ~ 0.7 1

tellraw @a {"text":"","extra":[{"selector":"@s"},{"text":"解放羽翼后，获得了","color":"aqua"},{"text":" [绿宝石矿石]","color":"white","bold":false},{"text":"*16","color":"yellow","bold":false},{"text":" !","color":"aqua"}]}

data merge block ~ ~-1 ~ {Items:[{id:"minecraft:emerald_ore",Slot:4b,count:16b}]}

function scr:random/random100000