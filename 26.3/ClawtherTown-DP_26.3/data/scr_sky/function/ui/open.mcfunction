scoreboard players set @s sky 0
scoreboard players enable @s sky
data modify storage scr_sky:ui request set value {view:"home",op:"none",id:0,target:"",role:0,confirmed:0}
function scr_sky:ui/render
