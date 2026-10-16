# Pure row builder: readonly omits all claim status; caller appends the resulting line.
data modify storage scr_mail:preview work.line set value {"type":"minecraft:item","item":{"id":"minecraft:air"},"width":16,"height":16,"show_tooltip":true,"show_decorations":true,"description":{"contents":{"text":"","color":"white","italic":false,"extra":[{},{}],"hover_event":{"action":"show_text","value":{"text":"","color":"white","extra":[{"translate":"gui.scr.mail.claim_status","fallback":"领取状态: "},{}]}}},"width":140}}
data modify storage scr_mail:preview work.line.item set from storage scr_mail:preview work.preview_item
data modify storage scr_mail:preview work.line.description.contents.extra[0] set from storage scr_mail:preview work.item_label
$data modify storage scr_mail:preview work.line.description.contents.extra[1] set value {text:" ×$(count)",color:"gray"}
execute unless data storage scr_mail:preview work{readonly:1b} run data modify storage scr_mail:preview work.line.description.contents.hover_event.value.extra[1] set from storage scr_mail:preview work.state_label
execute if data storage scr_mail:preview work{readonly:1b} run data remove storage scr_mail:preview work.line.description.contents.hover_event
