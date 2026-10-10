# Revoke BEFORE grant so the same notification can be shown again. Leave it granted for packet sync.
# These advancements have no reward hook and never represent Task state.
$advancement revoke @s only $(base)/$(kind)
$execute store success score #notice scr_tk run advancement grant @s only $(base)/$(kind)
