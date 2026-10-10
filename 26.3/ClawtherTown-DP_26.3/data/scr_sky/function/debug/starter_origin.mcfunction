$function scr_sky:api/inspect {id:$(id)}
data get storage scr_sky:runtime result
data get storage scr_sky:config starter
# Use debug/island {id:1} for canonical center. Origin = center minus anchor, Y=starter.structure_origin_y.
