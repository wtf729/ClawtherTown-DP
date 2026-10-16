# Caller already proved attainment/submission. No state writes or click event.
data modify storage scr_mail:preview work.line.description.contents.extra append value {text:"✓",color:"aqua",italic:0b}
