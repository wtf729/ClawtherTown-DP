# A committed delivery can restore its progress flag without ever replaying clear.
data modify storage scr_task:runtime work.delivery_sync_queue set from storage scr_task:runtime work.ctx.deliveries
function scr_task:core/delivery/sync_loop
