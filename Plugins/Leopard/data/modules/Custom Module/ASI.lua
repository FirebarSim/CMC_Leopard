size = {173,70}

local sevenSeg = loadFont("7Segment.otf")

function rgbColour(r,g,b,a)
	return {r/255,g/255,b/255,a or 1}
end

local quartz_colour = rgbColour(255, 153, 0)
local shadow_colour = rgbColour(32,19,0)

function draw()
	drawText(sevenSeg,167,6,string.format("%3i",get(globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_pilot"))),58,false,false,TEXT_ALIGN_RIGHT,rgbColour(255,255,255))
end