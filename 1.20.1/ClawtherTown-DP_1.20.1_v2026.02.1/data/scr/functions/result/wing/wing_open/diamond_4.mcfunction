playsound scr:ui.cs_awarded_02 ambient @a ~ ~ ~ 0.3 1

tellraw @a {"text":"","extra":[{"selector":"@s"},{"text":"解放羽翼后，获得了","color":"aqua"},{"text":" [钻石]","color":"white","bold":false},{"text":"*4","color":"yellow","bold":false},{"text":" !","color":"aqua"}]}

data merge block ~ ~-1 ~ {Items:[{id:"minecraft:diamond",Slot:4b,count:4b}]}

function scr:random/random100000