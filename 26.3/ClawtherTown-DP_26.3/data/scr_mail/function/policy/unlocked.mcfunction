data modify storage scr_mail:runtime work.reason set value {"translate":"gui.scr.mail.reason.transaction_locked","fallback":"该邮件暂时无法领取, 请稍后再试!"}
$execute if data storage scr_mail:players players."$(key)".transaction run return 0
return 1
