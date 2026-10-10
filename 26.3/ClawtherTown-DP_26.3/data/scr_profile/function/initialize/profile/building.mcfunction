$execute unless data storage scr_profile:players players."$(key)".profiles.building run data modify storage scr_profile:players players."$(key)".profiles.building set value {initialized:1b,schema:1,inventory:[],ender_chest:[],xp:{levels:0,points:0},gamemode:1}
return run function scr_profile:storage/read with storage scr_profile:runtime work.ctx
