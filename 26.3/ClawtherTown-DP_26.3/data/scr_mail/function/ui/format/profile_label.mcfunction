data modify storage scr_mail:preview work.profile_label set value {"translate":"profile.scr.unclassified","fallback":"未知区域","color":"aqua"}
execute if data storage scr_mail:preview work{label_profile:"main"} run data modify storage scr_mail:preview work.profile_label set value {"translate":"profile.scr.main","fallback":"鹰翎镇","color":"aqua"}
execute if data storage scr_mail:preview work{label_profile:"sky"} run data modify storage scr_mail:preview work.profile_label set value {"translate":"profile.scr.sky","fallback":"鹰翎云境","color":"aqua"}
execute if data storage scr_mail:preview work{label_profile:"memory"} run data modify storage scr_mail:preview work.profile_label set value {"translate":"profile.scr.memory","fallback":"记忆之地","color":"aqua"}
execute if data storage scr_mail:preview work{label_profile:"star"} run data modify storage scr_mail:preview work.profile_label set value {"translate":"profile.scr.star","fallback":"星辰之地","color":"aqua"}
execute if data storage scr_mail:preview work{label_profile:"building"} run data modify storage scr_mail:preview work.profile_label set value {"translate":"profile.scr.building","fallback":"建筑区域","color":"aqua"}
execute if data storage scr_mail:preview work{label_profile:"any"} run data modify storage scr_mail:preview work.profile_label set value {"translate":"profile.scr.any","fallback":"任意区域","color":"aqua"}
