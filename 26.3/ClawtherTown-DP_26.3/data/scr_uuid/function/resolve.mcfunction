# Public API: execute as <player> run function scr_uuid:resolve
# Returns 1 on success, 0 on failure. Output: storage scr_uuid:runtime result.key.
# result.u0..u3 are the original signed UUID integers. No persistent player database.
# Copy result.key to the caller-owned context immediately, before any other UUID call.
# Every invocation invalidates the previous result, including non-player calls.
data remove storage scr_uuid:runtime result
execute unless entity @s[type=minecraft:player] run return 0
data modify storage scr_uuid:runtime result set value {}
data modify storage scr_uuid:runtime result.u0 set from entity @s UUID[0]
data modify storage scr_uuid:runtime result.u1 set from entity @s UUID[1]
data modify storage scr_uuid:runtime result.u2 set from entity @s UUID[2]
data modify storage scr_uuid:runtime result.u3 set from entity @s UUID[3]
function scr_uuid:internal/key with storage scr_uuid:runtime result
execute unless data storage scr_uuid:runtime result.key run return 0
return 1
