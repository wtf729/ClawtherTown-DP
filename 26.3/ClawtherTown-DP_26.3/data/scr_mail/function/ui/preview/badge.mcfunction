# UI-only name tag. This function never calls a reward handler or writes mail records.
data modify storage scr_mail:runtime work.line set value {"type":"minecraft:item","item":{"id":"minecraft:name_tag","count":1,"components":{"minecraft:custom_name":{},"minecraft:lore":[{},{"text":"","italic":false,"color":"white","extra":[{"translate":"gui.scr.mail.claim_status","fallback":"领取状态: "},{}]}]}},"width":16,"height":16,"show_tooltip":true,"show_decorations":false,"description":{"contents":{"text":"","color":"white","italic":false,"extra":[{}],"hover_event":{"action":"show_text","value":{"text":"","color":"white","extra":[{},{"text":"\n"},{"translate":"gui.scr.mail.claim_status","fallback":"领取状态: "},{}]}}},"width":310}}
data modify storage scr_mail:runtime work.line.item.components."minecraft:custom_name" set from storage scr_mail:runtime work.reward_label
data modify storage scr_mail:runtime work.line.item.components."minecraft:lore"[0] set from storage scr_mail:runtime work.reward_info
data modify storage scr_mail:runtime work.line.item.components."minecraft:lore"[1].extra[1] set from storage scr_mail:runtime work.state_label
data modify storage scr_mail:runtime work.line.description.contents.extra[0] set from storage scr_mail:runtime work.reward_label
data modify storage scr_mail:runtime work.line.description.contents.hover_event.value.extra[0] set from storage scr_mail:runtime work.reward_info
data modify storage scr_mail:runtime work.line.description.contents.hover_event.value.extra[3] set from storage scr_mail:runtime work.state_label
data modify storage scr_mail:runtime work.dialog.body append from storage scr_mail:runtime work.line
