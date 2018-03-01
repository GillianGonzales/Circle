-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By Gillian Gonzales
-- Created On Feb 28 2018
--
-- This program will calculate the area and circumfrence of a circle
-----------------------------------------------------------------------------------------

-- Making Varibles

local radius
local PI
local area
local circumfrence

-- Change the background
display.setDefault( "background", 1, 1, 1 )

-- Displaying textfield
local radiusTextField = native.newTextField( display.contentCenterX - 200, display.contentCenterY, 450, 150 )
radiusTextField.id = "User's input radius"

-- Adding Text
local circumfrenceText = display.newText( "Press button to calculate circumfrence", display.contentCenterX + 800, display.contentCenterY, 450, 210, native.systemFont, 50 )
circumfrenceText:setFillColor( 0, 0, 0 )
circumfrenceText.id = "Calculate circumfrence text"

local areaText = display.newText( "Press button to calculate circle area", display.contentCenterX + 825, display.contentCenterY + 250, 440, 220, native.systemFont, 50 )
areaText:setFillColor( 0, 0, 0 )
areaText.id = "Calculate area text"

local instruction = display.newText( "Type in the radius of the circle", display.contentCenterX - 150, display.contentCenterY - 100, 1000, 300, native.systemFont, 75 )
instruction:setFillColor( 0, 0, 0 )
instruction.id = "Instructions Text"

-- Adding Buttons
local circumfrenceButton = display.newImageRect("./Assets/sprites/Button.png", 406, 157 )
circumfrenceButton.x = 1350
circumfrenceButton.y = 768

local areaButton  = display.newImageRect("./Assets/sprites/ButtonOne.png", 406, 157 )areaButton.x = 1400
areaButton.x = 1400
areaButton.y = 1000

-- Making Function buttons

local function calculateCircumfrenceTouch( event )
	-- This function will calculate the circumfrence of the circle

	radius = radiusTextField.text
	PI = 3.14
	circumfrence = 2 * PI * radius
	-- print circumfrenceOfCircle
	circumfrenceText.text = "The circumfrence is " .. circumfrence .. " cm"


	return true
end

local function calculateAreaTouch( event )
	-- This function will calculate the area of the circle

	radius = radiusTextField.text
	PI = 3.14
	area = PI * radius^2
	-- print areaOfCircle
	areaText.text = "The area is " .. area .. " cm^2"


	return true
end

-- Adding event listener
circumfrenceButton:addEventListener( "touch", calculateCircumfrenceTouch )

areaButton:addEventListener( "touch", calculateAreaTouch )


