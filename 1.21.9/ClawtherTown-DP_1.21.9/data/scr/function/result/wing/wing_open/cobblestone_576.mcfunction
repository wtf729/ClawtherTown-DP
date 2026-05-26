playsound scr:ui.cs_awarded_04 ambient @a ~ ~ ~

tellraw @a {"text":"","extra":[{"selector":"@s"},{"text":"解放羽翼后，获得了","color":"aqua"},{"text":" [圆石]","color":"white","bold":false},{"text":"*576","color":"yellow","bold":false},{"text":" !","color":"aqua"}]}

advancement grant @s only scr:wing_unlucky

data merge block ~ ~-1 ~ {Items:[{id:"minecraft:cobblestone",count:64b,Slot:0b},{id:"minecraft:cobblestone",count:64b,Slot:1b},{id:"minecraft:cobblestone",count:64b,Slot:2b},{id:"minecraft:cobblestone",count:64b,Slot:3b},{id:"minecraft:cobblestone",count:64b,Slot:4b},{id:"minecraft:cobblestone",count:64b,Slot:5b},{id:"minecraft:cobblestone",count:64b,Slot:6b},{id:"minecraft:cobblestone",count:64b,Slot:7b},{id:"minecraft:cobblestone",count:64b,Slot:8b}]}

function scr:random/random100000