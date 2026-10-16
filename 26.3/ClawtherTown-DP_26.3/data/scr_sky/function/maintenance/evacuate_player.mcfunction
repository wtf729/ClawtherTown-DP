# The enclosing evacuation already validated the Sky dimension and safe hub.
execute store success score #m_evacuated_one scr_sk run teleport @s 0 100 0
execute if score #m_evacuated_one scr_sk matches 1 run function scr_sky:travel/protect_arrival
