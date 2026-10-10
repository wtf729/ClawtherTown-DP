# Preserve the saved loot icon exactly; the adjacent description carries the reward amount.
$data modify storage scr_mail:runtime work.business_label.with set value [{text:"$(amount)"}]
data modify storage scr_mail:runtime work.line set value {type:"minecraft:item",item:{id:"minecraft:barrier",count:1},width:16,height:16,show_tooltip:true,show_decorations:false,description:{width:310,contents:{text:"",extra:[]}}}
execute if data storage scr_mail:runtime work.entry.icon run data modify storage scr_mail:runtime work.line.item set from storage scr_mail:runtime work.entry.icon
data modify storage scr_mail:runtime work.line.description.contents.extra append from storage scr_mail:runtime work.business_label
data modify storage scr_mail:runtime work.line.description.contents.extra append value {text:" · ",color:"gray"}
data modify storage scr_mail:runtime work.line.description.contents.extra append from storage scr_mail:runtime work.state_label
data modify storage scr_mail:runtime work.dialog.body append from storage scr_mail:runtime work.line
return 1
