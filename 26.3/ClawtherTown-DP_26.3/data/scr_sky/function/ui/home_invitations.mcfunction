data modify storage scr_sky:ui work.number.n set from storage scr_sky:ui work.snapshot.invitation_count
function scr_sky:ui/string_number with storage scr_sky:ui work.number
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.invitations","fallback":"空岛邀请 (%s)","color":"white","with":[{"text":""}]}
data modify storage scr_sky:ui work.label.with[0].text set from storage scr_sky:ui work.number_text
data modify storage scr_sky:ui work.route set value {view:"invitations",op:"none",id:0,target:"",role:0,confirmed:0}
function scr_sky:ui/button
data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
