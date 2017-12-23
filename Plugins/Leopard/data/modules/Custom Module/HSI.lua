size = {593,608}

createGlobalPropertyi("efis40/ehsi/pointer1_mode",0)
createGlobalPropertyi("efis40/ehsi/pointer2_mode",0)

local arial = loadFont("arial.ttf")

function rgbColour(r,g,b,a)
	return {r/255,g/255,b/255,a or 1}
end

local colour_deepblue = rgbColour(0,0,0)
local colour_white = rgbColour(255,255,255)
local colour_orange = rgbColour(249,165,27)
local colour_green = rgbColour(43,181,114)
local colour_turquiose = rgbColour(0,206,209)
local colour_magenta = rgbColour(255,0,255)

function draw()
	if get(globalPropertyi("efis40/ehsi/pointer1_mode")) ~= 0 then
	saveGraphicsContext()
	--Pointer 1
		setTranslateTransform(593/2,(269))
		setRotateTransform(0) --Swing
		drawWideLine(0,190,0,-190,4,colour_turquiose)
		drawTriangle(-12,176,0,200,12,176,colour_turquiose)
	restoreGraphicsContext()
	end
	if get(globalPropertyi("efis40/ehsi/pointer2_mode")) ~= 0 then
	saveGraphicsContext()
	--Pointer 2
		setTranslateTransform(593/2,(269))
		setRotateTransform(0) --Swing
		drawWideLine(-4,190,-4,-190,4,colour_magenta)
		drawWideLine(4,190,4,-190,4,colour_magenta)
		drawTriangle(-12,176,0,200,12,176,colour_magenta)
	restoreGraphicsContext()
	end
	saveGraphicsContext()
	--Course Pointer Full
		setTranslateTransform(593/2,269)
		setRotateTransform(get(globalPropertyf("sim/cockpit2/radios/indicators/hsi_relative_heading_electric_deg_pilot"))) --Swing
		--XTE markings
		drawArc(-130,0,6,7,0,360,colour_white)
		drawArc(-65,0,6,7,0,360,colour_white)
		drawArc(65,0,6,7,0,360,colour_white)
		drawArc(130,0,6,7,0,360,colour_white)
		drawWideLine(0,58,0,130,4,colour_green)
		drawWidePolyLine({0,130,16,132,4,156,0,200,-4,156,-16,132,0,130},2,colour_green)
		drawWideLine(0,-73,0,-160,4,colour_green)
		drawWideLine(0,-160,0,-175,3,colour_green)
		drawWideLine(0,-175,0,-185,2,colour_green)
		drawWideLine(0,-185,0,-195,2,colour_green)
		if math.abs(get(globalPropertyf("sim/cockpit2/radios/indicators/hsi_hdef_dots_pilot"))) <= 2 then
			setTranslateTransform(65*get(globalPropertyf("sim/cockpit2/radios/indicators/hsi_hdef_dots_pilot")),0) --Lateral Deviation
			drawWideLine(0,55,0,-70,4,colour_green)
		elseif get(globalPropertyf("sim/cockpit2/radios/indicators/hsi_hdef_dots_pilot")) > 2 then
			drawWidePolyLine({120,10,115,0,120,-10},3,colour_green)
			drawWidePolyLine({115,10,110,0,115,-10},3,colour_green)
		elseif get(globalPropertyf("sim/cockpit2/radios/indicators/hsi_hdef_dots_pilot")) < -2 then
			drawWidePolyLine({-120,10,-115,0,-120,-10},3,colour_green)
			drawWidePolyLine({-115,10,-110,0,-115,-10},3,colour_green)
		end
	restoreGraphicsContext()
	saveGraphicsContext()
	--Compass Card Full
		setTranslateTransform(593/2,(269))
		setRotateTransform(-1*get(globalPropertyf("sim/cockpit2/gauges/indicators/heading_electric_deg_mag_pilot"))) --Swing
		drawWideLine(0,197,0,237,2,colour_white)
		drawText(arial,0,175,"N",25,false,false,TEXT_ALIGN_CENTER,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		drawText(arial,0,175,"3",25,false,false,TEXT_ALIGN_CENTER,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		drawText(arial,0,175,"6",25,false,false,TEXT_ALIGN_CENTER,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		drawText(arial,0,175,"E",25,false,false,TEXT_ALIGN_CENTER,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		drawText(arial,0,175,"12",25,false,false,TEXT_ALIGN_CENTER,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		drawText(arial,0,175,"15",25,false,false,TEXT_ALIGN_CENTER,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		drawText(arial,0,175,"S",25,false,false,TEXT_ALIGN_CENTER,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		drawText(arial,0,175,"21",25,false,false,TEXT_ALIGN_CENTER,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		drawText(arial,0,175,"24",25,false,false,TEXT_ALIGN_CENTER,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		drawText(arial,0,175,"W",25,false,false,TEXT_ALIGN_CENTER,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		drawText(arial,0,175,"30",25,false,false,TEXT_ALIGN_CENTER,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		drawText(arial,0,175,"33",25,false,false,TEXT_ALIGN_CENTER,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,197,0,237,2,colour_white)
		setRotateTransform(5)
		drawWideLine(0,217,0,237,2,colour_white)
	restoreGraphicsContext()
	saveGraphicsContext()
		setTranslateTransform(593/2,(269))
		--Heading Pointer Full
		drawTriangle(-12,267,0,243,12,267,colour_white)
		--Airplane Marker
		drawWidePolyLine({-4,13,-31,-5,-32,-9,-4,1},2,colour_orange)
		drawWidePolyLine({4,13,31,-5,32,-9,4,1},2,colour_orange)
		drawWidePolyLine({-3,-24,-9,-29,-9,-33,-2,-30},2,colour_orange)
		drawWidePolyLine({3,-24,9,-29,9,-33,2,-30},2,colour_orange)
		drawWidePolyLine({0,-33,-2,-30,-3,-24,-4,-19,-4,27,-3,33,0,39,3,33,4,27,4,-19,3,-24,2,-30,0,-33},2,colour_orange)
		--45 Degree Ticks
		setRotateTransform(-45)
		drawWideLine(0,240,0,260,2,colour_white)
		setRotateTransform(90)
		drawWideLine(0,240,0,260,2,colour_white)
		setRotateTransform(90)
		drawWideLine(0,240,0,260,2,colour_white)
		setRotateTransform(90)
		drawWideLine(0,240,0,260,2,colour_white)
		setRotateTransform(135)
		--Heading Bug Full
		setRotateTransform(get(globalPropertyf("sim/cockpit2/autopilot/heading_dial_deg_mag_pilot"))-get(globalPropertyf("sim/cockpit2/gauges/indicators/heading_electric_deg_mag_pilot"))) --Swing
		drawConvexPolygon({-2,243,-26,243,-26,267,-14,267},true,0,colour_orange)
		drawConvexPolygon({2,243,26,243,26,267,14,267},true,0,colour_orange)
	restoreGraphicsContext()
	if get(globalPropertyi("sim/cockpit2/radios/indicators/hsi_display_vertical_pilot")) == 1 then
		saveGraphicsContext()
			setTranslateTransform((593/2)+217+5,(269))
			--Vertical Deviation Scale
			drawRectangle(0,-175,593-((593/2)+217+5),175*2,colour_deepblue)
			drawWidePolyLine({20,-175,0,-175,0,175,20,175},2,colour_white)
			drawArc(20,-155,7,9,0,360,colour_white)
			drawArc(20,-(155/2),6,7,0,360,colour_white)
			drawWidePolyLine({20,-20,30,0,20,20,10,0,20,-20},2,colour_white)
			drawArc(20,(155/2),6,7,0,360,colour_white)
			drawArc(20,155,7,9,0,360,colour_white)
			if math.abs(get(globalPropertyf("sim/cockpit2/radios/indicators/hsi_hdef_dots_pilot"))) <= 2 then
				setTranslateTransform(0,(155/2)*get(globalPropertyf("sim/cockpit2/radios/indicators/hsi_hdef_dots_pilot")))
				drawWideLine(8,0,35,0,6,colour_green)
				drawWidePolyLine({35,-30,35,30,56,30,56,-30,35,-30},2,colour_green)
				drawText(arial,36,5,"G\nS",25,false,false,TEXT_ALIGN_LEFT,colour_white)
			elseif get(globalPropertyf("sim/cockpit2/radios/indicators/hsi_hdef_dots_pilot")) > 2 then
				drawWidePolyLine({10,145,20,135,30,145},3,colour_green)
				drawWidePolyLine({10,140,20,130,30,140},3,colour_green)
			elseif get(globalPropertyf("sim/cockpit2/radios/indicators/hsi_hdef_dots_pilot")) < -2 then
				drawWidePolyLine({10,-145,20,-135,30,-145},3,colour_green)
				drawWidePolyLine({10,-140,20,-130,30,-140},3,colour_green)
			end
		restoreGraphicsContext()
	end
	--NAV Source Indicator
	if get(globalPropertyi("sim/cockpit2/radios/actuators/HSI_source_select_pilot")) == 0 then
		if get(globalPropertyi("sim/cockpit2/radios/indicators/hsi_display_vertical_pilot")) == 1 then
			drawText(arial,(593/2)-217-25,269+67,"L\nO\nC",35,false,false,TEXT_ALIGN_RIGHT,colour_green)
		else
			drawText(arial,(593/2)-217-25,269+67,"N\nA\nV",35,false,false,TEXT_ALIGN_RIGHT,colour_green)
		end
		drawText(arial,(593/2)-217-25,269-65,"1",35,false,false,TEXT_ALIGN_RIGHT,colour_green)
	elseif get(globalPropertyi("sim/cockpit2/radios/actuators/HSI_source_select_pilot")) == 1 then
		if get(globalPropertyi("sim/cockpit2/radios/indicators/hsi_display_vertical_pilot")) == 1 then
			drawText(arial,(593/2)-217-25,269+67,"L\nO\nC",35,false,false,TEXT_ALIGN_RIGHT,colour_green)
		else
			drawText(arial,(593/2)-217-25,269+67,"N\nA\nV",35,false,false,TEXT_ALIGN_RIGHT,colour_green)
		end
		drawText(arial,(593/2)-217-25,269-65,"2",35,false,false,TEXT_ALIGN_RIGHT,colour_green)
	elseif get(globalPropertyi("sim/cockpit2/radios/actuators/HSI_source_select_pilot")) == 2 then
		drawText(arial,(593/2)-217-25,269+67,"G\nP\nS",35,false,false,TEXT_ALIGN_RIGHT,colour_green)
		drawText(arial,(593/2)-217-25,269-65,"1",35,false,false,TEXT_ALIGN_RIGHT,colour_green)
	end
	--NAV Direction Indicator
	drawText(arial,145,530,"CRS",25,false,false,TEXT_ALIGN_RIGHT,colour_white)
	drawText(arial,150,530,string.format("%03i",get(globalPropertyf("sim/cockpit2/radios/actuators/hsi_obs_deg_mag_pilot"))),35,false,false,TEXT_ALIGN_LEFT,colour_white)
	--NAV Range Indication
	drawText(arial,448,530,"CRS",25,false,false,TEXT_ALIGN_LEFT,colour_white)
	drawText(arial,443,530,string.format("%03i",get(globalPropertyf("sim/cockpit2/radios/actuators/hsi_obs_deg_mag_pilot"))),35,false,false,TEXT_ALIGN_RIGHT,colour_white)
	--Wind Vector
	drawText(arial,150,500,string.format("%2i",get(globalPropertyf("sim/cockpit2/gauges/indicators/wind_speed_kts"))),25,false,false,TEXT_ALIGN_LEFT,colour_white)
	saveGraphicsContext()
		setTranslateTransform(130,510)
		setRotateTransform(get(globalPropertyf("sim/cockpit2/gauges/indicators/wind_heading_deg_mag")))
		drawWideLine(0,-15,0,10,2,colour_white)
		drawTriangle(-7.5,7.5,0,15,7.5,7.5,colour_white)
	restoreGraphicsContext()
end