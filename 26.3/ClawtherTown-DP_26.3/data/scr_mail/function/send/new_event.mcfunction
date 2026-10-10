# Reserved automatic key prefix: do not use mail_delivery_ in caller-assigned event IDs.
$data modify storage scr_mail:request mail.event_id set value "mail_delivery_$(id)"
