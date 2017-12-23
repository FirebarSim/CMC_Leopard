createGlobalPropertyf("leopard/flightmodel2/elevon_left",0)
createGlobalPropertyf("leopard/flightmodel2/elevon_right",0)

defineProperty("flap", globalPropertyf("sim/cockpit2/controls/flap_ratio"))
defineProperty("sim_time", globalPropertyf("sim/time/total_flight_time_sec"))

function update()
	if get(sim_time) > 0 and get(sim_time) < 1 then
		set(flap,0.4)
	end
	set(globalPropertyf("leopard/flightmodel2/elevon_left"),get(globalPropertyfae("sim/flightmodel2/wing/elevator1_deg",9)) + get(globalPropertyfae("sim/flightmodel2/wing/aileron1_deg",9)))
	set(globalPropertyf("leopard/flightmodel2/elevon_right"),get(globalPropertyfae("sim/flightmodel2/wing/elevator1_deg",10)) + get(globalPropertyfae("sim/flightmodel2/wing/aileron1_deg",10)))
end