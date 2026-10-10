data modify storage scr_sky:config hub set value {ready:1b,dimension:"scr:sky",x:0.0d,y:100.0d,z:0.0d,yaw:0.0f,pitch:0.0f}
scoreboard players add #hub_clock scr_sk 0

# Runtime-adjustable maintenance budget; invalid values fall back to 2, supported range 1..8.
execute unless data storage scr_sky:config maintenance.slabs_per_tick run data modify storage scr_sky:config maintenance.slabs_per_tick set value 2
