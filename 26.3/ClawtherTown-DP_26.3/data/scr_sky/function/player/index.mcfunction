$execute if data storage scr_sky:players indexed."$(key)" run return 1
$data modify storage scr_sky:players keys append value "$(key)"
$data modify storage scr_sky:players indexed."$(key)" set value 1b
