data modify storage scr_task:runtime work.home_queue set value []
$data modify storage scr_task:runtime work.home_queue set from storage homes:storage players[{uuid:$(uuid)}].homes
