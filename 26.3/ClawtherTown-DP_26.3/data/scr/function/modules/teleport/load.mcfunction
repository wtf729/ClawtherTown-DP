# Developer attribution: Homes (home) and Back originally come from Vanilla Tweaks.
# Original source: https://vanillatweaks.net/
# Embedded modules keep their original namespaces and persistent data identifiers.

# Initialize both modules before applying ClawtherTown's existing settings.
function back:load
function homes:load

# Server policy: preserve the settings from ClawtherTown v2026.09.1.
scoreboard players set #death back.config 1
scoreboard players set #delay back.config 20
scoreboard players set #cooldown back.config 3
scoreboard players set #limit homes.config 1000
scoreboard players set #delay homes.config 20
scoreboard players set #cooldown homes.config 3

# These functions reschedule themselves. Do not also call them from scr:tick.
function homes:tick
function homes:decrement_cooldowns
function back:tick
function back:decrement_cooldowns
function back:check_game_rules
