data modify storage scr_mail:runtime work.profile set value "main"
scoreboard players set #profile scr_ml_n 1
execute if predicate scr_profile:profile/building run data modify storage scr_mail:runtime work.profile set value "building"
execute if predicate scr_profile:profile/building run scoreboard players set #profile scr_ml_n 2
execute if predicate scr_profile:profile/memory run data modify storage scr_mail:runtime work.profile set value "memory"
execute if predicate scr_profile:profile/memory run scoreboard players set #profile scr_ml_n 3
execute if predicate scr_profile:profile/star run data modify storage scr_mail:runtime work.profile set value "star"
execute if predicate scr_profile:profile/star run scoreboard players set #profile scr_ml_n 4
execute if predicate scr_profile:profile/sky run data modify storage scr_mail:runtime work.profile set value "sky"
execute if predicate scr_profile:profile/sky run scoreboard players set #profile scr_ml_n 5
