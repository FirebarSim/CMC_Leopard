size = {1522,192}

local sevenSeg = loadFont("7Segment.otf")

function rgbColour(r,g,b,a)
	return {r/255,g/255,b/255,a or 1}
end

local quartz_colour = rgbColour(255, 153, 0)
local shadow_colour = rgbColour(32,19,0)

function draw()
	--Com 1
	drawText(sevenSeg,294,102,string.format("%3.2f",get(globalPropertyf("sim/cockpit2/radios/actuators/com1_frequency_hz"))/100),58,false,false,TEXT_ALIGN_RIGHT,quartz_colour)
	drawText(sevenSeg,294,6,string.format("%3.2f",get(globalPropertyf("sim/cockpit2/radios/actuators/com1_standby_frequency_hz"))/100),58,false,false,TEXT_ALIGN_RIGHT,quartz_colour)
	--Nav 1
	drawText(sevenSeg,600,102,string.format("%3.2f",get(globalPropertyf("sim/cockpit2/radios/actuators/nav1_frequency_hz"))/100),58,false,false,TEXT_ALIGN_RIGHT,quartz_colour)
	drawText(sevenSeg,600,6,string.format("%3.2f",get(globalPropertyf("sim/cockpit2/radios/actuators/nav1_standby_frequency_hz"))/100),58,false,false,TEXT_ALIGN_RIGHT,quartz_colour)
	--Xpndr
	drawText(sevenSeg,901,102,string.format("%3.2f",get(globalPropertyf("sim/cockpit2/radios/actuators/nav1_frequency_hz"))/100),58,false,false,TEXT_ALIGN_RIGHT,quartz_colour)
	--Com 2
	drawText(sevenSeg,1208,102,string.format("%3.2f",get(globalPropertyf("sim/cockpit2/radios/actuators/com2_frequency_hz"))/100),58,false,false,TEXT_ALIGN_RIGHT,quartz_colour)
	drawText(sevenSeg,1208,6,string.format("%3.2f",get(globalPropertyf("sim/cockpit2/radios/actuators/com2_standby_frequency_hz"))/100),58,false,false,TEXT_ALIGN_RIGHT,quartz_colour)
	--Nav 2
	drawText(sevenSeg,1516,102,string.format("%3.2f",get(globalPropertyf("sim/cockpit2/radios/actuators/nav2_frequency_hz"))/100),58,false,false,TEXT_ALIGN_RIGHT,quartz_colour)
	drawText(sevenSeg,1516,6,string.format("%3.2f",get(globalPropertyf("sim/cockpit2/radios/actuators/nav2_standby_frequency_hz"))/100),58,false,false,TEXT_ALIGN_RIGHT,quartz_colour)
end