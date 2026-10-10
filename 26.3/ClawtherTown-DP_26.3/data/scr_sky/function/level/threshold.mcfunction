# L=1000*a+b. P(L)=10*a*a*1,000,000+(20*a*b+100*a)*1000+10*b*b+100*b.
# No intermediate forms L*L or a combined 64-bit value in a scoreboard.
# a<=14654; 10*a*a<=2,147,397,160. The binary-search bound keeps final millions valid.
scoreboard players operation #lv_a scr_sk = #lv_mid scr_sk
scoreboard players operation #lv_a scr_sk /= #lv_k scr_sk
scoreboard players operation #lv_b scr_sk = #lv_mid scr_sk
scoreboard players operation #lv_b scr_sk %= #lv_k scr_sk
scoreboard players operation #lv_pm scr_sk = #lv_a scr_sk
scoreboard players operation #lv_pm scr_sk *= #lv_a scr_sk
scoreboard players operation #lv_pm scr_sk *= #lv_ten scr_sk
scoreboard players operation #lv_cross scr_sk = #lv_a scr_sk
scoreboard players operation #lv_cross scr_sk *= #lv_b scr_sk
scoreboard players operation #lv_cross scr_sk *= #lv_twenty scr_sk
scoreboard players operation #lv_part scr_sk = #lv_a scr_sk
scoreboard players operation #lv_part scr_sk *= #lv_hundred scr_sk
scoreboard players operation #lv_cross scr_sk += #lv_part scr_sk
scoreboard players operation #lv_part scr_sk = #lv_cross scr_sk
scoreboard players operation #lv_part scr_sk /= #lv_k scr_sk
scoreboard players operation #lv_pm scr_sk += #lv_part scr_sk
scoreboard players operation #lv_pu scr_sk = #lv_cross scr_sk
scoreboard players operation #lv_pu scr_sk %= #lv_k scr_sk
scoreboard players operation #lv_pu scr_sk *= #lv_k scr_sk
scoreboard players operation #lv_tail scr_sk = #lv_b scr_sk
scoreboard players operation #lv_tail scr_sk *= #lv_b scr_sk
scoreboard players operation #lv_tail scr_sk *= #lv_ten scr_sk
scoreboard players operation #lv_part scr_sk = #lv_b scr_sk
scoreboard players operation #lv_part scr_sk *= #lv_hundred scr_sk
scoreboard players operation #lv_tail scr_sk += #lv_part scr_sk
scoreboard players operation #lv_part scr_sk = #lv_tail scr_sk
scoreboard players operation #lv_part scr_sk /= #lv_base scr_sk
scoreboard players operation #lv_pm scr_sk += #lv_part scr_sk
scoreboard players operation #lv_tail scr_sk %= #lv_base scr_sk
scoreboard players operation #lv_pu scr_sk += #lv_tail scr_sk
scoreboard players operation #lv_part scr_sk = #lv_pu scr_sk
scoreboard players operation #lv_part scr_sk /= #lv_base scr_sk
scoreboard players operation #lv_pm scr_sk += #lv_part scr_sk
scoreboard players operation #lv_pu scr_sk %= #lv_base scr_sk
