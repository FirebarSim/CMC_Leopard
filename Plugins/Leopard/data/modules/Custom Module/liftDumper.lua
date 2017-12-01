defineProperty("flap", globalPropertyf("sim/cockpit2/controls/flap_ratio"))
defineProperty("sim_time", globalPropertyf("sim/time/total_flight_time_sec"))

function update()
	if get(sim_time) > 0 and get(sim_time) < 1 then
		set(flap,0.4)
	end
end