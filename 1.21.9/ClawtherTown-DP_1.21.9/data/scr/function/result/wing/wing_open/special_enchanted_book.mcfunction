playsound scr:ui.cs_awarded_04 ambient @a ~ ~ ~ 0.7 1

tellraw @a {"text":"","extra":[{"selector":"@s"},{"text":"解放羽翼后，获得了","color":"aqua"},{"text":" [神奇附魔书]","color":"yellow","bold":false},{"text":" !","color":"aqua"}]}

data merge block ~ ~-1 ~ {Items:[]}
loot replace block ~ ~-1 ~ container.4 loot scr:consumables/special_enchanted_book

function scr:random/random100000