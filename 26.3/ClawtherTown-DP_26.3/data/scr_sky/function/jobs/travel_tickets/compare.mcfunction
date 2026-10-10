scoreboard players operation #fl_other_x scr_sk /= #fl_size scr_sk
scoreboard players operation #fl_other_z scr_sk /= #fl_size scr_sk
scoreboard players operation #fl_other_x scr_sk *= #fl_size scr_sk
scoreboard players operation #fl_other_z scr_sk *= #fl_size scr_sk
execute if score #fl_x scr_sk = #fl_other_x scr_sk if score #fl_z scr_sk = #fl_other_z scr_sk run scoreboard players set #fl_held scr_sk 1
