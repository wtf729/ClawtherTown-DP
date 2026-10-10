# No automatic retry after an ambiguous reward attempt; the administrator must reconcile it.
function scr_task:ui/notification/show {kind:"submit_failed"}
return 0
