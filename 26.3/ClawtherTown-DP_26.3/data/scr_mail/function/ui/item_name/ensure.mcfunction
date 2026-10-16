# UI configuration cache only; old revision-named fields are intentionally ignored.
execute unless data storage scr_mail:ui vanilla_item_names run return run function scr_mail:ui/item_name/load
execute unless data storage scr_mail:ui {vanilla_item_names_version:"26.3/v1"} run return run function scr_mail:ui/item_name/load
return 1
