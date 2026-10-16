# Static projection only: never invoke Loot, prepare, apply or any multiplier.
data remove storage scr_mail:preview work.entry.icon
data remove storage scr_mail:preview work.business_label
$data modify storage scr_mail:preview work.entry.icon set from storage scr_mail:definitions display_icons."$(handler)"
$data modify storage scr_mail:preview work.business_label set from storage scr_mail:definitions display_labels."$(handler)"
execute unless data storage scr_mail:preview work.entry.icon.id run return 0
execute unless data storage scr_mail:preview work.business_label run return 0
execute unless data storage scr_mail:preview work.entry.parameters.amount run return 0
return run function scr_mail:ui/reward/currency_row with storage scr_mail:preview work.entry.parameters
