$data modify storage scr_mail:ui players."$(key)" set value {actions:[]}
data modify storage scr_mail:runtime work.dialog set value {type:"minecraft:multi_action",title:{"translate":"gui.scr.mail.postbox","fallback":"鹰翎驿站","color":"gold"},pause:0b,after_action:"none",can_close_with_escape:1b,columns:2,body:[],actions:[]}
$execute unless data storage scr_mail:players players."$(key)".next_token run data modify storage scr_mail:players players."$(key)".next_token set value 100
function scr_mail:ui/current_area
return 1
