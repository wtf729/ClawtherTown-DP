$data modify storage scr_sky:ui work.clock_text set value {text:"$(minutes):$(seconds)"}
$execute if score #secs scr_sk matches ..9 run data modify storage scr_sky:ui work.clock_text set value {text:"$(minutes):0$(seconds)"}
