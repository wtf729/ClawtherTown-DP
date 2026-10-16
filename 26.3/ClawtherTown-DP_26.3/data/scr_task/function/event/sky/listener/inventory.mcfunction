advancement revoke @s only scr_task:listener/sky/inventory
# Mail can insert up to 36 stacks synchronously. Each insertion fires this listener.
# Coalesce its task scans into one later task tick, outside the Mail command quota.
execute if score #busy scr_ml_lock matches 1 run return run tag @s add scr_task.inventory_pending
tag @s remove scr_task.inventory_pending
function scr_task:event/sky/open {event:"inventory"}
