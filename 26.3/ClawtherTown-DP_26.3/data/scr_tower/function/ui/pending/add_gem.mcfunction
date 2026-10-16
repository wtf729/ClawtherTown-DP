data modify storage scr_tower:runtime aggregate prepend value {kind:"gem",quantity:0}
data modify storage scr_tower:runtime aggregate[0].quantity set from storage scr_tower:runtime p.run.gems
