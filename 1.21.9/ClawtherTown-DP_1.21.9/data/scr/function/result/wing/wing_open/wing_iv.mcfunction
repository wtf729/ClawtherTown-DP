playsound scr:ui.cs_awarded_02 ambient @a ~ ~ ~ 0.3 1

tellraw @a {"text":"","extra":[{"selector":"@s"},{"text":"解放羽翼后，获得了","color":"aqua"},{"text":" [上等羽翼]","color":"gold","bold":false},{"text":" !","color":"aqua"}]}

function scr:result/wing/wing_only/wing_iv

function scr:random/random100000