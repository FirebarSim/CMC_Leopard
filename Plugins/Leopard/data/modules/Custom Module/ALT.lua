size = {561,151}

local sevenSeg = loadFont("7Segment.otf")

function rgbColour(r,g,b,a)
	return {r/255,g/255,b/255,a or 1}
end

local quartz_colour = rgbColour(255, 153, 0)
local shadow_colour = rgbColour(32,19,0)

function draw()
	drawText(sevenSeg,6,6,string.format("%4i",get(globalPropertyf("sim/cockpit2/gauges/actuators/barometer_setting_in_hg_pilot"))*33.8639),58,false,false,TEXT_ALIGN_LEFT,rgbColour(255,255,255))
	if get(globalPropertyf("sim/cockpit2/autopilot/alt_vvi_is_showing_vvi")) == 1 then
		drawText(sevenSeg,555,6,string.format("%6i",get(globalPropertyf("sim/cockpit2/autopilot/vvi_dial_fpm"))),58,false,false,TEXT_ALIGN_RIGHT,rgbColour(255,255,255))
	else
		drawText(sevenSeg,555,6,string.format("%6i",get(globalPropertyf("sim/cockpit2/autopilot/altitude_dial_ft"))),58,false,false,TEXT_ALIGN_RIGHT,rgbColour(255,255,255))
	end
	drawText(sevenSeg,288,87,string.format("%6i",get(globalPropertyf("sim/cockpit2/gauges/indicators/altitude_ft_pilot"))),58,false,false,TEXT_ALIGN_RIGHT,rgbColour(255,255,255))
end