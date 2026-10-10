data modify storage scr_mail:runtime work.line set value {"type":"minecraft:item","item":{"id":"minecraft:air"},"width":16,"height":16,"show_tooltip":true,"show_decorations":true,"description":{"contents":{"text":"","color":"white","italic":false,"extra":[{},{}],"hover_event":{"action":"show_text","value":{"text":"","color":"white","extra":[{"translate":"gui.scr.mail.claim_status","fallback":"领取状态: "},{}]}}},"width":310}}
data modify storage scr_mail:runtime work.line.item set from storage scr_mail:runtime work.preview_item
data modify storage scr_mail:runtime work.line.description.contents.extra[0] set from storage scr_mail:runtime work.item_label
$data modify storage scr_mail:runtime work.line.description.contents.extra[1] set value {text:" ×$(count)",color:"gray"}
data modify storage scr_mail:runtime work.line.description.contents.hover_event.value.extra[1] set from storage scr_mail:runtime work.state_label
data modify storage scr_mail:runtime work.dialog.body append from storage scr_mail:runtime work.line
