size = {685,1623}

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
	saveGraphicsContext()
		--Quad 685 x 317
		setTranslateTransform(0,1306)
		drawRectangle(0,0,685,317,colour_magenta)
	restoreGraphicsContext()
	saveGraphicsContext()
		--N1
		setTranslateTransform(0,978)
		drawRectangle(0,0,685,317,colour_turquiose)
	restoreGraphicsContext()
	saveGraphicsContext()
		--N2
		setTranslateTransform(0,651)
		drawRectangle(0,0,685,317,colour_orange)
	restoreGraphicsContext()
	saveGraphicsContext()
		--EGT
		setTranslateTransform(0,327)
		drawRectangle(0,0,685,317,colour_green)
	restoreGraphicsContext()
	saveGraphicsContext()
		--Fuel
		setTranslateTransform(0,0)
		drawRectangle(0,0,685,317,colour_white)
	restoreGraphicsContext()
end