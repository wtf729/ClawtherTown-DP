# An old transaction must not block unrelated messages or replay uncertain side effects.
$execute unless data storage scr_mail:players players."$(key)".transaction run return 0
$data modify storage scr_mail:runtime work.ctx.id set from storage scr_mail:players players."$(key)".transaction.mail_id
return run function scr_mail:recovery/quarantine with storage scr_mail:runtime work.ctx
