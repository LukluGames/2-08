-----------------------------------------------------------------------------------------
--
--
-- This file makes an object scroll across the screen
-- 
--
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local variables to this entire file
local scrollSpeed = 1

-- background image with width and height
local backgroundImage = display.newImageRect("./assets/textures/MirageSaloon.png", 1000, 650)
backgroundImage.x = display.contentCenterX
backgroundImage.y = display.contentCenterY
backgroundImage.ID = "background image"

-- character image with width and height
local ball = display.newImageRect("./assets/sprites/ball.png", 200, 200)
ball.x = 0
ball.y = 350 -- note I am using not the center but the height of the diaplay
ball.ID = "ball"

local function MoveImage(event)
	-- add the scroll speed to the x-value of the image
    ball.x = ball.x + scrollSpeed
    print( display.fps )  -- note this displays how fast the current refresh is
end

-- MoveShip will be called at program start over and over (60 frames or times per second)
Runtime:addEventListener("enterFrame", MoveImage)