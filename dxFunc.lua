function dxLogin(user, pass)
	if ( user ~= "" ) and ( pass ~= "" ) then
		if ( #user >= 4 ) then
			if ( #pass >= 8 ) then
				triggerServerEvent("dx:login", localPlayer, user, pass)
			else
				outputChatBox("* La clave debe tener +8 digitos!", 255, 0, 0, true)
			end
		else
			outputChatBox("* La cuenta debe tener +4 digitos!", 255, 0, 0, true)
		end
	else
		outputChatBox("* Debes colocar un usuario y una clave validas!", 255, 0, 0, true)
	end
end
--
function dxRegister(user, pass)
	if ( user ~= "" ) and ( pass ~= "" ) then
		if ( #user >= 4 ) then
			if ( #pass >= 8 ) then
				triggerServerEvent("dx:register", localPlayer, user, pass)
			else
				outputChatBox("* La clave debe tener +8 digitos!", 255, 0, 0, true)
			end
		else
			outputChatBox("* La cuenta debe tener +4 digitos!", 255, 0, 0, true)
		end
	else
		outputChatBox("* Debes colocar un usuario y una clave validas!", 255, 0, 0, true)
	end
end
--
addEvent("dx:close", true)
addEventHandler("dx:close", root,
function()
	userTxt = ""
	passTxt = ""
	itemSelected = nil
	visible = false
	setCameraTarget(localPlayer)
	showCursor(false)
end
)