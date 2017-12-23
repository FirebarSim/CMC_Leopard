size = { 2048 , 2048 }

panel2d = false
panelWidth3d = 2048
panelHeight3d = 2048

set(globalPropertyf("sim/private/controls/shadow/cockpit_near_adjust"),2)
set(globalPropertyf("sim/private/controls/shadow/cockpit_near_proxy"),0.01)

components = {
	liftDumper {},
	ADI {
		position = {639,1229,683,598}},
	HSI {
		position = {683,605,593,608}},
	ASI {
		position = {1147,301,173,70}},
	ALT {
		position = {764,217,561,151}},
	Radio {
		position = {517,5,1522,192}},
	Engine {
		position = {1344,201,685,1623}},
	customSwitches {},
}