# Generic display wording selected by the user; actual tag grant remains unchanged.
data modify storage scr_mail:runtime work.reward_label set value {"translate":"gui.scr.mail.reward.tag","fallback":"解锁内容","color":"gold","italic":false}
data modify storage scr_mail:runtime work.reward_info set value {"translate":"gui.scr.mail.reward.tag_description","fallback":"领取后可解锁该内容!","color":"gray","italic":false}
