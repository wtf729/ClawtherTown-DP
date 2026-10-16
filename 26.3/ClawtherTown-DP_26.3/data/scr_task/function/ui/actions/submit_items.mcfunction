$function scr_task:api/submit_items {id:"$(id)",goal:"$(goal)"}
data modify storage scr_task:runtime ui_request.view set value "detail"
data remove storage scr_task:runtime ui_request.goal
