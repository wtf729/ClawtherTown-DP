playsound minecraft:block.enchantment_table.use block @a ~ ~ ~

tellraw @a ["",{"selector":"@s"},{"text":" 通过升级羽翼，获得了","color":"aqua"},{"text":" [神鹰羽翼] ","color":"red","bold":true},{"text":"!","color":"aqua"}]

function scr:result/wing/wing_only/wing_vi