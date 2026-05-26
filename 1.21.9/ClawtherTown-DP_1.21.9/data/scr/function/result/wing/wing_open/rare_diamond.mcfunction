playsound scr:ui.cs_awarded_03 ambient @a ~ ~ ~ 0.5 1

tellraw @a {"text":"","extra":[{"selector":"@s"},{"text":"解放羽翼后，获得了","color":"aqua"},{"text":" [钻石 (奇珍)]","color":"aqua","bold":false},{"text":" !","color":"aqua"}]}

data merge block ~ ~-1 ~ {Items:[]}
loot replace block ~ ~-1 ~ container.4 loot scr:ingredients/rare_diamond

function scr:random/random100000