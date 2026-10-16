data modify storage scr_tower:runtime p.run.payment.state set value "admin_not_applied"
data modify storage scr_tower:runtime p.run.phase set value "danger"
return run function scr_tower:save
