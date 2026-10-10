# Internal helper. Call scr_uuid:resolve instead; arguments must come from player UUID integers.
execute unless entity @s[type=minecraft:player] run return 0
$data modify storage scr_uuid:runtime result.key set value "u$(u0)_$(u1)_$(u2)_$(u3)"
