advancement revoke @s only scr:special/birthday
advancement grant @s only scr:special/birthday

function scr_mail:source/birthday


tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份生日礼物: ","color":"aqua","bold":false},{"text":"[奇珍矿脉]*3","color":"gold","bold":false},{"text":" !","color":"aqua","bold":false}]
tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份生日礼物: ","color":"aqua","bold":false},{"text":"[法杖 (★) | Starry]","color":"light_purple","bold":false},{"text":" !","color":"aqua","bold":false}]