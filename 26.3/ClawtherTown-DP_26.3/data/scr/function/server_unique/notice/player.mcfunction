# Resolve each recipient independently; no persistent player context is created.
execute store result score #notice_uuid notice run function scr_uuid:resolve
execute unless score #notice_uuid notice matches 1 run return 0
function scr:server_unique/notice/mail with storage scr_uuid:runtime result
function scr:server_unique/notice/tower with storage scr_uuid:runtime result
