playsound scr:ui.cs_awarded_03 ambient @a ~ ~ ~ 0.5 1

tellraw @a {"text":"","extra":[{"selector":"@s"},{"text":"解放羽翼后，获得了","color":"aqua"},{"text":" [远古残骸]","color":"white","bold":false},{"text":"*2","color":"yellow","bold":false},{"text":" !","color":"aqua"}]}

data merge block ~ ~-1 ~ {Items:[{id:"minecraft:ancient_debris",Slot:4b,count:2b}]}

function scr:random/random100000