createGlobalPropertyi("leopard/cockpit2/fuel/pump_left_indicator",0)
createGlobalPropertyi("leopard/cockpit2/fuel/pump_right_indicator",0)
createGlobalPropertyi("leopard/cockpit2/fuel/lp_cock_left",0)
createGlobalPropertyi("leopard/cockpit2/fuel/lp_cock_right",0)
createGlobalPropertyi("leopard/cockpit2/fuel/lp_cock_left_indicator",0)
createGlobalPropertyi("leopard/cockpit2/fuel/lp_cock_right_indicator",0)
createGlobalPropertyi("leopard/cockpit2/fuel/x_feed_select",0)
createGlobalPropertyi("leopard/cockpit2/fuel/x_feed_select_left_indicator",0)
createGlobalPropertyi("leopard/cockpit2/fuel/x_feed_select_right_indicator",0)
createGlobalPropertyi("leopard/cockpit2/engine/starter_select",0)
createGlobalPropertyf("leopard/cockpit2/controls/pedal_pos_left",0)
createGlobalPropertyf("leopard/cockpit2/controls/pedal_pos_right",0)
createGlobalPropertyi("leopard/cockpit2/switch/pedal_pos_left",0)
createGlobalPropertyi("leopard/cockpit2/switch/pedal_pos_right",0)
createGlobalPropertyi("leopard/cockpit2/switch/cabin_heat_lo",0)
createGlobalPropertyi("leopard/cockpit2/switch/cabin_heat_hi",0)
createGlobalPropertyi("leopard/cockpit2/switch/tat_heat",0)
createGlobalPropertyf("leopard/cockpit2/gauges/ias_limit",0)

if get(globalPropertyi("sim/cockpit2/fuel/fuel_tank_selector_left")) ~= 0 then
	set(globalPropertyi("leopard/cockpit2/fuel/lp_cock_left"),1)
else
	set(globalPropertyi("leopard/cockpit2/fuel/lp_cock_left"),0)
end

if get(globalPropertyi("sim/cockpit2/fuel/fuel_tank_selector_right")) ~= 0 then
	set(globalPropertyi("leopard/cockpit2/fuel/lp_cock_right"),1)
else
	set(globalPropertyi("leopard/cockpit2/fuel/lp_cock_right"),0)
end

function pedalLeftFwdHandler(phase)
	if phase == 0 then
		set(globalPropertyi("leopard/cockpit2/switch/pedal_pos_left"),1)
	elseif phase == 1 then

	elseif phase == 2 then
		set(globalPropertyi("leopard/cockpit2/switch/pedal_pos_left"),0)
	end
end

local pedalLeftFwd = createCommand("leopard/controls/pedal_l_fwd", "")
registerCommandHandler(pedalLeftFwd,0, pedalLeftFwdHandler)

function pedalLeftAftHandler(phase)
	if phase == 0 then
		set(globalPropertyi("leopard/cockpit2/switch/pedal_pos_left"),-1)
	elseif phase == 1 then

	elseif phase == 2 then
		set(globalPropertyi("leopard/cockpit2/switch/pedal_pos_left"),0)
	end
end

local pedalLeftAft = createCommand("leopard/controls/pedal_l_aft", "")
registerCommandHandler(pedalLeftAft,0, pedalLeftAftHandler)

function pedalRightFwdHandler(phase)
	if phase == 0 then
		set(globalPropertyi("leopard/cockpit2/switch/pedal_pos_right"),1)
	elseif phase == 1 then
		
	elseif phase == 2 then
		set(globalPropertyi("leopard/cockpit2/switch/pedal_pos_right"),0)
	end
end

local pedalRightFwd = createCommand("leopard/controls/pedal_r_fwd", "")
registerCommandHandler(pedalRightFwd,0, pedalRightFwdHandler)

function pedalRightAftHandler(phase)
	if phase == 0 then
		set(globalPropertyi("leopard/cockpit2/switch/pedal_pos_right"),-1)
	elseif phase == 1 then

	elseif phase == 2 then
		set(globalPropertyi("leopard/cockpit2/switch/pedal_pos_right"),0)
	end
end

local pedalRightAft = createCommand("leopard/controls/pedal_r_aft", "")
registerCommandHandler(pedalRightAft,0, pedalRightAftHandler)

function update()
	--Starter
	if get(globalPropertyia("sim/cockpit2/engine/actuators/ignition_key"),1) == 4 then
		set(globalPropertyi("leopard/cockpit2/engine/starter_select"),-1)
	elseif get(globalPropertyia("sim/cockpit2/engine/actuators/ignition_key"),2) == 4 then
		set(globalPropertyi("leopard/cockpit2/engine/starter_select"),1)
	else
		set(globalPropertyi("leopard/cockpit2/engine/starter_select"),0)
	end
	--Left Fuel Selector
	if get(globalPropertyi("leopard/cockpit2/fuel/lp_cock_left")) == 0 then
		set(globalPropertyi("sim/cockpit2/fuel/fuel_tank_selector_left"),0)
	elseif get(globalPropertyi("leopard/cockpit2/fuel/lp_cock_left")) == 1 and get(globalPropertyi("leopard/cockpit2/fuel/x_feed_select")) ~= -1 then
		set(globalPropertyi("sim/cockpit2/fuel/fuel_tank_selector_left"),1)
	else
		set(globalPropertyi("sim/cockpit2/fuel/fuel_tank_selector_left"),4)
	end
	--Right Fuel Selector
	if get(globalPropertyi("leopard/cockpit2/fuel/lp_cock_right")) == 0 then
		set(globalPropertyi("sim/cockpit2/fuel/fuel_tank_selector_right"),0)
	elseif get(globalPropertyi("leopard/cockpit2/fuel/lp_cock_right")) == 1 and get(globalPropertyi("leopard/cockpit2/fuel/x_feed_select")) ~= 1 then
		set(globalPropertyi("sim/cockpit2/fuel/fuel_tank_selector_right"),1)
	else
		set(globalPropertyi("sim/cockpit2/fuel/fuel_tank_selector_right"),4)
	end
	--Fuel Pump Indicators
	if get(globalPropertyia("sim/cockpit2/fuel/fuel_tank_pump_on"),1) == 1 and get(globalPropertyia("sim/cockpit2/electrical/battery_on"),1) == 1 then
		set(globalPropertyi("leopard/cockpit2/fuel/pump_left_indicator"),1)
	else
		set(globalPropertyi("leopard/cockpit2/fuel/pump_left_indicator"),0)
	end
	if get(globalPropertyia("sim/cockpit2/fuel/fuel_tank_pump_on"),2) == 1 and get(globalPropertyia("sim/cockpit2/electrical/battery_on"),1) == 1 then
		set(globalPropertyi("leopard/cockpit2/fuel/pump_right_indicator"),1)
	else
		set(globalPropertyi("leopard/cockpit2/fuel/pump_right_indicator"),0)
	end
	--Cross Feed Indicators
	if get(globalPropertyi("leopard/cockpit2/fuel/x_feed_select")) == -1 and get(globalPropertyia("sim/cockpit2/electrical/battery_on"),1) == 1 then
		set(globalPropertyi("leopard/cockpit2/fuel/x_feed_select_left_indicator"),1)
	else
		set(globalPropertyi("leopard/cockpit2/fuel/x_feed_select_left_indicator"),0)
	end
	if get(globalPropertyi("leopard/cockpit2/fuel/x_feed_select")) == 1 and get(globalPropertyia("sim/cockpit2/electrical/battery_on"),1) == 1 then
		set(globalPropertyi("leopard/cockpit2/fuel/x_feed_select_right_indicator"),1)
	else
		set(globalPropertyi("leopard/cockpit2/fuel/x_feed_select_right_indicator"),0)
	end
	--LP Cock Indicators
	if get(globalPropertyi("leopard/cockpit2/fuel/lp_cock_left")) == 1 and get(globalPropertyia("sim/cockpit2/electrical/battery_on"),1) == 1 then
		set(globalPropertyi("leopard/cockpit2/fuel/lp_cock_left_indicator"),1)
	else
		set(globalPropertyi("leopard/cockpit2/fuel/lp_cock_left_indicator"),0)
	end
	if get(globalPropertyi("leopard/cockpit2/fuel/lp_cock_right")) == 1 and get(globalPropertyia("sim/cockpit2/electrical/battery_on"),1) == 1 then
		set(globalPropertyi("leopard/cockpit2/fuel/lp_cock_right_indicator"),1)
	else
		set(globalPropertyi("leopard/cockpit2/fuel/lp_cock_right_indicator"),0)
	end
	--Starter Indicators
	
	--IAS Limit
	local delta = get(globalPropertyf("sim/weather/barometer_current_inhg"))/29.92
	local ias_lim = get(globalPropertyf("sim/weather/speed_sound_ms"))*1.94384*get(globalPropertyf("sim/aircraft/view/acf_Mmo"))*math.sqrt(get(globalPropertyf("sim/weather/sigma")))*(1+(1/8)*(1-delta)*math.pow(get(globalPropertyf("sim/flightmodel/misc/machno")),2)+(3/640)*(1-10*delta+9*math.pow(delta,2))*math.pow(get(globalPropertyf("sim/flightmodel/misc/machno")),4))
	if ias_lim <= get(globalPropertyf("sim/aircraft/view/acf_Vne")) then
		set(globalPropertyf("leopard/cockpit2/gauges/ias_limit"),ias_lim)
	else
		set(globalPropertyf("leopard/cockpit2/gauges/ias_limit"),get(globalPropertyf("sim/aircraft/view/acf_Vne")))
	end
end