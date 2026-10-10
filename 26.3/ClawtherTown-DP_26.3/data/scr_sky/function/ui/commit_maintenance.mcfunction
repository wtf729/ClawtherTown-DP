# Called only by a consumed final-confirmation page token. kind is fixed by ui/operate.
# Request and confirmation execute synchronously through the existing protected APIs.
$function scr_sky:api/request_$(kind) {id:$(id)}
execute unless data storage scr_sky:runtime result{ok:1b} run return 0
$function scr_sky:api/confirm_$(kind) {id:$(id)}
execute if data storage scr_sky:runtime result{ok:1b} run return 1
return 0
