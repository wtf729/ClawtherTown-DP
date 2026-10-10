# Only the online creator travels; use this newly created ID, never a cooperative Primary.
$execute as @a[nbt={UUID:$(uuid)}] at @s run function scr_sky:jobs/claim_travel {id:$(id)}
