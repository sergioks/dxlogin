function isMouseInPosition ( x, y, width, height )
	if ( not isCursorShowing( ) ) then
		return false
	end
    local sx, sy = guiGetScreenSize ( )
    local cx, cy = getCursorPosition ( )
    local cx, cy = ( cx * sx ), ( cy * sy )
    if ( cx >= x and cx <= x + width ) and ( cy >= y and cy <= y + height ) then
        return true
    else
        return false
    end
end

-- Modified version for DX Text
function isCursorOverText(posX, posY, sizeX, sizeY)
    if(isCursorShowing()) then
        local cX, cY = getCursorPosition()
        local screenWidth, screenHeight = guiGetScreenSize()
        local cX, cY = (cX*screenWidth), (cY*screenHeight)
        if(cX >= posX and cX <= posX+(sizeX - posX)) and (cY >= posY and cY <= posY+(sizeY - posY)) then
            return true
        else
            return false
        end
    else
        return false	
    end
end
--
addEventHandler("onClientResourceStart", resourceRoot,
function()
	visible = true
	setCameraMatrix(1450.9970703125, -846.66015625, 91.940704345703, 1415.5166015625, -809.162109375, 76.053718566895, 0, 90)
	showCursor(true)
end
)
--
addEventHandler("onClientResourceStop", resourceRoot,
function()
	userTxt = ""
	passTxt = ""
	itemSelected = nil
	visible = false
	setCameraTarget(localPlayer)
	showCursor(false)
end
)
--
