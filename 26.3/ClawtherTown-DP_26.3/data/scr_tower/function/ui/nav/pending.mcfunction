data modify storage scr_tower:runtime nav.view set value "pending"
data modify storage scr_tower:runtime nav.page set value 0
data modify storage scr_tower:runtime nav.return_view set from storage scr_tower:runtime route.return_view
return 1
