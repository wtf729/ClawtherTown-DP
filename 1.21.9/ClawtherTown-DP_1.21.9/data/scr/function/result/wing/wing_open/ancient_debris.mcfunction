playsound scr:ui.cs_awarded_02 ambient @a ~ ~ ~ 0.3 1

tellraw @a {"text":"","extra":[{"selector":"@s"},{"text":"解放羽翼后，获得了","color":"aqua"},{"text":" [远古残骸]","color":"white","bold":false},{"text":" !","color":"aqua"}]}

data merge block ~ ~-1 ~ {Items:[{id:"minecraft:ancient_debris",Slot:4b,count:1b}]}

function scr:random/random100000