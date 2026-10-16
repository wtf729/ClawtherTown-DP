# Preserve the saved loot icon exactly; the adjacent description carries the reward amount.
$data modify storage scr_mail:preview work.business_label.with set value [{text:"$(amount)"}]
data modify storage scr_mail:preview work.line set value {type:"minecraft:item",item:{id:"minecraft:barrier",count:1},width:16,height:16,show_tooltip:true,show_decorations:false,description:{width:140,contents:{text:"",extra:[]}}}
execute if data storage scr_mail:preview work.entry.icon run data modify storage scr_mail:preview work.line.item set from storage scr_mail:preview work.entry.icon
data modify storage scr_mail:preview work.line.description.contents.extra append from storage scr_mail:preview work.business_label
return 1
