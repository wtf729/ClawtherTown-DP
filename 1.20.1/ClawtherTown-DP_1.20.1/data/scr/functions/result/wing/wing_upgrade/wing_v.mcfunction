playsound minecraft:block.enchantment_table.use block @a ~ ~ ~

tellraw @a {"text":"","extra":[{"selector":"@s"},{"text":" 通过升级羽翼，获得了","color":"aqua"},{"text":" [特上等羽翼] ","color":"red","bold":false},{"text":"!","color":"aqua"}]}

function scr:result/wing/wing_only/wing_v