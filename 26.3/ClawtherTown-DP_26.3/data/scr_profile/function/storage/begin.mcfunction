$execute if data storage scr_profile:players players."$(key)".meta.pending run return 0
$data modify storage scr_profile:players players."$(key)".meta.pending set value {from:$(from),to:$(to),phase:1}
$execute unless data storage scr_profile:players players."$(key)".meta.pending{from:$(from),to:$(to),phase:1} run return 0
return 1
