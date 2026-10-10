$execute unless data storage scr_profile:players players."$(key)".profiles.star run data modify storage scr_profile:players players."$(key)".profiles.star set value {initialized:1b,schema:1,inventory:[],ender_chest:[],xp:{levels:0,points:0},gamemode:2}
return run function scr_profile:storage/read with storage scr_profile:runtime work.ctx
