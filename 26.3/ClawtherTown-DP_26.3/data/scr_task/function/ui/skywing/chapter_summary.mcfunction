# Shared chapter-button name/progress/status; never emits a separate explanation body.
$data modify storage scr_task:runtime work.label.extra append value {text:" · $(completed_count)/$(total)",color:"gray"}
function scr_task:ui/skywing/chapter_status
