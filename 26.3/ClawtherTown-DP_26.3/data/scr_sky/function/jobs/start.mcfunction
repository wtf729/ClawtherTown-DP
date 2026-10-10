data modify storage scr_sky:jobs active set value {phase:"audit_owner",cursor:1,wait:0,tickets:[],allocated:0b,error:"none"}
data modify storage scr_sky:jobs active.kind set from storage scr_sky:runtime work.kind
data modify storage scr_sky:jobs active.key set from storage scr_sky:runtime work.ctx.key
data modify storage scr_sky:jobs active.target set from storage scr_sky:runtime work.ctx.target
data modify storage scr_sky:jobs active.id set from storage scr_sky:runtime work.ctx.id
data modify storage scr_sky:jobs active.uuid set from entity @s UUID
data modify storage scr_sky:jobs active.audit_end set from storage scr_sky:islands meta.next_id
data modify storage scr_sky:runtime result.ok set value 1b
data modify storage scr_sky:runtime result.pending set value 1b
