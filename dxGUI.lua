local screenW, screenH = guiGetScreenSize()
userTxt = ""
passTxt = ""
itemSelected = nil
visible = false

addEventHandler("onClientRender", root,
function()
	if ( visible == true ) then
		--[[* DX - VARIABLES *]]--
		local loginBtn_color = (isMouseInPosition(screenW * 0.3766, screenH * 0.5625, screenW * 0.1172, screenH * 0.0458) and tocolor(0, 219, 0, 170) or tocolor(109, 109, 109, 170))
		local userSelected_color = (itemSelected == "user-box" and tocolor(0, 255, 0, 255) or tocolor(0, 0, 0, 255))
		local passSelected_color = (itemSelected == "pass-box" and tocolor(0, 255, 0, 255) or tocolor(0, 0, 0, 255))
		--
		local registerBtn_color = (isMouseInPosition(screenW * 0.5031, screenH * 0.5625, screenW * 0.1172, screenH * 0.0458) and tocolor(0, 219, 0, 170) or tocolor(109, 109, 109, 170))
		--
		local playerName = getPlayerName(localPlayer):gsub("#%x%x%x%x%x%x","")
		--[[* DX - CODE *]]--
        dxDrawText("Bienvenido,\n"..playerName, (screenW * 0.0000) - 1, (screenH * 0.0000) - 1, (screenW * 1.0000) - 1, (screenH * 0.2139) - 1, tocolor(0, 0, 0, 255), 2.00, "bankgothic", "center", "center", false, false, false, false, false)
        dxDrawText("Bienvenido,\n"..playerName, (screenW * 0.0000) + 1, (screenH * 0.0000) - 1, (screenW * 1.0000) + 1, (screenH * 0.2139) - 1, tocolor(0, 0, 0, 255), 2.00, "bankgothic", "center", "center", false, false, false, false, false)
        dxDrawText("Bienvenido,\n"..playerName, (screenW * 0.0000) - 1, (screenH * 0.0000) + 1, (screenW * 1.0000) - 1, (screenH * 0.2139) + 1, tocolor(0, 0, 0, 255), 2.00, "bankgothic", "center", "center", false, false, false, false, false)
        dxDrawText("Bienvenido,\n"..playerName, (screenW * 0.0000) + 1, (screenH * 0.0000) + 1, (screenW * 1.0000) + 1, (screenH * 0.2139) + 1, tocolor(0, 0, 0, 255), 2.00, "bankgothic", "center", "center", false, false, false, false, false)
        dxDrawText("Bienvenido,\n"..playerName, screenW * 0.0000, screenH * 0.0000, screenW * 1.0000, screenH * 0.2139, tocolor(255, 255, 255, 255), 2.00, "bankgothic", "center", "center", false, false, false, false, false)
        --
		dxDrawLine((screenW * 0.3648) - 1, (screenH * 0.2208) - 1, (screenW * 0.3648) - 1, screenH * 0.7806, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.6359, (screenH * 0.2208) - 1, (screenW * 0.3648) - 1, (screenH * 0.2208) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.3648) - 1, screenH * 0.7806, screenW * 0.6359, screenH * 0.7806, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.6359, screenH * 0.7806, screenW * 0.6359, (screenH * 0.2208) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.3648, screenH * 0.2208, screenW * 0.2711, screenH * 0.5597, tocolor(1, 0, 0, 151), false)
        --
		dxDrawLine(screenW * 0.3648, screenH * 0.2736, screenW * 0.5836, screenH * 0.2736, tocolor(0, 0, 0, 255), 1, false)
        --
		dxDrawText("Ingreso", (screenW * 0.3688) - 1, (screenH * 0.2278) - 1, (screenW * 0.6320) - 1, (screenH * 0.2667) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawText("Ingreso", (screenW * 0.3688) + 1, (screenH * 0.2278) - 1, (screenW * 0.6320) + 1, (screenH * 0.2667) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawText("Ingreso", (screenW * 0.3688) - 1, (screenH * 0.2278) + 1, (screenW * 0.6320) - 1, (screenH * 0.2667) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawText("Ingreso", (screenW * 0.3688) + 1, (screenH * 0.2278) + 1, (screenW * 0.6320) + 1, (screenH * 0.2667) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawText("Ingreso", screenW * 0.3688, screenH * 0.2278, screenW * 0.6320, screenH * 0.2667, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        --
		dxDrawText("Usuario:", (screenW * 0.3727) - 1, (screenH * 0.2806) - 1, (screenW * 0.4211) - 1, (screenH * 0.3194) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
        dxDrawText("Usuario:", (screenW * 0.3727) + 1, (screenH * 0.2806) - 1, (screenW * 0.4211) + 1, (screenH * 0.3194) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
        dxDrawText("Usuario:", (screenW * 0.3727) - 1, (screenH * 0.2806) + 1, (screenW * 0.4211) - 1, (screenH * 0.3194) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
        dxDrawText("Usuario:", (screenW * 0.3727) + 1, (screenH * 0.2806) + 1, (screenW * 0.4211) + 1, (screenH * 0.3194) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
        dxDrawText("Usuario:", screenW * 0.3727, screenH * 0.2806, screenW * 0.4211, screenH * 0.3194, tocolor(255, 255, 255, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
        --
		dxDrawLine((screenW * 0.3766) - 1, (screenH * 0.3264) - 1, (screenW * 0.3766) - 1, screenH * 0.3722, userSelected_color, 1, false)
        dxDrawLine(screenW * 0.6203, (screenH * 0.3264) - 1, (screenW * 0.3766) - 1, (screenH * 0.3264) - 1, userSelected_color, 1, false)
        dxDrawLine((screenW * 0.3766) - 1, screenH * 0.3722, screenW * 0.6203, screenH * 0.3722, userSelected_color, 1, false)
        dxDrawLine(screenW * 0.6203, screenH * 0.3722, screenW * 0.6203, (screenH * 0.3264) - 1, userSelected_color, 1, false)
        dxDrawRectangle(screenW * 0.3766, screenH * 0.3264, screenW * 0.2437, screenH * 0.0458, tocolor(254, 254, 254, 170), false)
		--
		dxDrawText(userTxt, (screenW * 0.3805) - 1, (screenH * 0.3264) - 1, (screenW * 0.6164) - 1, (screenH * 0.3722) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
		dxDrawText(userTxt, (screenW * 0.3805) + 1, (screenH * 0.3264) - 1, (screenW * 0.6164) + 1, (screenH * 0.3722) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
        dxDrawText(userTxt, (screenW * 0.3805) - 1, (screenH * 0.3264) + 1, (screenW * 0.6164) - 1, (screenH * 0.3722) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
        dxDrawText(userTxt, (screenW * 0.3805) + 1, (screenH * 0.3264) + 1, (screenW * 0.6164) + 1, (screenH * 0.3722) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
        dxDrawText(userTxt, screenW * 0.3805, screenH * 0.3264, screenW * 0.6164, screenH * 0.3722, tocolor(255, 255, 255, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
		--
		dxDrawText("Clave:", (screenW * 0.3727) - 1, (screenH * 0.3792) - 1, (screenW * 0.4211) - 1, (screenH * 0.4181) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
        dxDrawText("Clave:", (screenW * 0.3727) + 1, (screenH * 0.3792) - 1, (screenW * 0.4211) + 1, (screenH * 0.4181) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
        dxDrawText("Clave:", (screenW * 0.3727) - 1, (screenH * 0.3792) + 1, (screenW * 0.4211) - 1, (screenH * 0.4181) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
        dxDrawText("Clave:", (screenW * 0.3727) + 1, (screenH * 0.3792) + 1, (screenW * 0.4211) + 1, (screenH * 0.4181) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
        dxDrawText("Clave:", screenW * 0.3727, screenH * 0.3792, screenW * 0.4211, screenH * 0.4181, tocolor(255, 255, 255, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
        --
		dxDrawLine((screenW * 0.3766) - 1, (screenH * 0.4250) - 1, (screenW * 0.3766) - 1, screenH * 0.4708, passSelected_color, 1, false)
        dxDrawLine(screenW * 0.6203, (screenH * 0.4250) - 1, (screenW * 0.3766) - 1, (screenH * 0.4250) - 1, passSelected_color, 1, false)
        dxDrawLine((screenW * 0.3766) - 1, screenH * 0.4708, screenW * 0.6203, screenH * 0.4708, passSelected_color, 1, false)
        dxDrawLine(screenW * 0.6203, screenH * 0.4708, screenW * 0.6203, (screenH * 0.4250) - 1, passSelected_color, 1, false)
        dxDrawRectangle(screenW * 0.3766, screenH * 0.4250, screenW * 0.2437, screenH * 0.0458, tocolor(254, 254, 254, 170), false)
        --
		dxDrawText(passTxt, (screenW * 0.3805) - 1, (screenH * 0.4250) - 1, (screenW * 0.6164) - 1, (screenH * 0.4708) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
        dxDrawText(passTxt, (screenW * 0.3805) + 1, (screenH * 0.4250) - 1, (screenW * 0.6164) + 1, (screenH * 0.4708) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
        dxDrawText(passTxt, (screenW * 0.3805) - 1, (screenH * 0.4250) + 1, (screenW * 0.6164) - 1, (screenH * 0.4708) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
        dxDrawText(passTxt, (screenW * 0.3805) + 1, (screenH * 0.4250) + 1, (screenW * 0.6164) + 1, (screenH * 0.4708) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
        dxDrawText(passTxt, screenW * 0.3805, screenH * 0.4250, screenW * 0.6164, screenH * 0.4708, tocolor(255, 255, 255, 255), 1.00, "default-bold", "left", "center", false, false, false, false, false)
		--
		dxDrawText("Ingrese su Usuario y Clave para ingresar", (screenW * 0.3766) - 1, (screenH * 0.4847) - 1, (screenW * 0.6203) - 1, (screenH * 0.5556) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawText("Ingrese su Usuario y Clave para ingresar", (screenW * 0.3766) + 1, (screenH * 0.4847) - 1, (screenW * 0.6203) + 1, (screenH * 0.5556) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawText("Ingrese su Usuario y Clave para ingresar", (screenW * 0.3766) - 1, (screenH * 0.4847) + 1, (screenW * 0.6203) - 1, (screenH * 0.5556) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawText("Ingrese su Usuario y Clave para ingresar", (screenW * 0.3766) + 1, (screenH * 0.4847) + 1, (screenW * 0.6203) + 1, (screenH * 0.5556) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawText("Ingrese su Usuario y Clave para ingresar", screenW * 0.3766, screenH * 0.4847, screenW * 0.6203, screenH * 0.5556, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        --
		dxDrawLine((screenW * 0.3766) - 1, (screenH * 0.5625) - 1, (screenW * 0.3766) - 1, screenH * 0.6083, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.4938, (screenH * 0.5625) - 1, (screenW * 0.3766) - 1, (screenH * 0.5625) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.3766) - 1, screenH * 0.6083, screenW * 0.4938, screenH * 0.6083, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.4938, screenH * 0.6083, screenW * 0.4938, (screenH * 0.5625) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.3766, screenH * 0.5625, screenW * 0.1172, screenH * 0.0458, loginBtn_color, false)
		--
		dxDrawText("Ingresar", (screenW * 0.3766) - 1, (screenH * 0.5625) - 1, (screenW * 0.4938) - 1, (screenH * 0.6083) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawText("Ingresar", (screenW * 0.3766) + 1, (screenH * 0.5625) - 1, (screenW * 0.4938) + 1, (screenH * 0.6083) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawText("Ingresar", (screenW * 0.3766) - 1, (screenH * 0.5625) + 1, (screenW * 0.4938) - 1, (screenH * 0.6083) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawText("Ingresar", (screenW * 0.3766) + 1, (screenH * 0.5625) + 1, (screenW * 0.4938) + 1, (screenH * 0.6083) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawText("Ingresar", screenW * 0.3766, screenH * 0.5625, screenW * 0.4938, screenH * 0.6083, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        --
		dxDrawLine((screenW * 0.5031) - 1, (screenH * 0.5625) - 1, (screenW * 0.5031) - 1, screenH * 0.6083, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.6203, (screenH * 0.5625) - 1, (screenW * 0.5031) - 1, (screenH * 0.5625) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.5031) - 1, screenH * 0.6083, screenW * 0.6203, screenH * 0.6083, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.6203, screenH * 0.6083, screenW * 0.6203, (screenH * 0.5625) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.5031, screenH * 0.5625, screenW * 0.1172, screenH * 0.0458, registerBtn_color, false)
        --
		dxDrawText("Crear Cuenta", (screenW * 0.5031) - 1, (screenH * 0.5625) - 1, (screenW * 0.6203) - 1, (screenH * 0.6083) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawText("Crear Cuenta", (screenW * 0.5031) + 1, (screenH * 0.5625) - 1, (screenW * 0.6203) + 1, (screenH * 0.6083) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawText("Crear Cuenta", (screenW * 0.5031) - 1, (screenH * 0.5625) + 1, (screenW * 0.6203) - 1, (screenH * 0.6083) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawText("Crear Cuenta", (screenW * 0.5031) + 1, (screenH * 0.5625) + 1, (screenW * 0.6203) + 1, (screenH * 0.6083) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawText("Crear Cuenta", screenW * 0.5031, screenH * 0.5625, screenW * 0.6203, screenH * 0.6083, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        --
		dxDrawText("Este recurso es creado por SergioksRGC (#SelFire). Se autoriza el uso de el mismo en la red al igual que se autoriza la modificacion del mismo.", (screenW * 0.3766) - 1, (screenH * 0.6153) - 1, (screenW * 0.6203) - 1, (screenH * 0.7556) - 1, tocolor(0, 0, 0, 255), 1.00, "arial", "center", "center", false, true, false, false, false)
        dxDrawText("Este recurso es creado por SergioksRGC (#SelFire). Se autoriza el uso de el mismo en la red al igual que se autoriza la modificacion del mismo.", (screenW * 0.3766) + 1, (screenH * 0.6153) - 1, (screenW * 0.6203) + 1, (screenH * 0.7556) - 1, tocolor(0, 0, 0, 255), 1.00, "arial", "center", "center", false, true, false, false, false)
        dxDrawText("Este recurso es creado por SergioksRGC (#SelFire). Se autoriza el uso de el mismo en la red al igual que se autoriza la modificacion del mismo.", (screenW * 0.3766) - 1, (screenH * 0.6153) + 1, (screenW * 0.6203) - 1, (screenH * 0.7556) + 1, tocolor(0, 0, 0, 255), 1.00, "arial", "center", "center", false, true, false, false, false)
        dxDrawText("Este recurso es creado por SergioksRGC (#SelFire). Se autoriza el uso de el mismo en la red al igual que se autoriza la modificacion del mismo.", (screenW * 0.3766) + 1, (screenH * 0.6153) + 1, (screenW * 0.6203) + 1, (screenH * 0.7556) + 1, tocolor(0, 0, 0, 255), 1.00, "arial", "center", "center", false, true, false, false, false)
        dxDrawText("Este recurso es creado por SergioksRGC (#SelFire). Se autoriza el uso de el mismo en la red al igual que se autoriza la modificacion del mismo.", screenW * 0.3766, screenH * 0.6153, screenW * 0.6203, screenH * 0.7556, tocolor(255, 255, 255, 255), 1.00, "arial", "center", "center", false, true, false, false, false)
	end
end
)
--
addEventHandler("onClientClick", root,
function(button, state)
	if ( button == "left" ) and ( state == "down" ) then
		if ( visible == true ) then
			if ( isMouseInPosition(screenW * 0.3766, screenH * 0.3264, screenW * 0.2437, screenH * 0.0458) ) then
				itemSelected = "user-box"
			elseif ( isMouseInPosition(screenW * 0.3766, screenH * 0.4250, screenW * 0.2437, screenH * 0.0458) ) then
				itemSelected = "pass-box"
			elseif ( isMouseInPosition(screenW * 0.3766, screenH * 0.5625, screenW * 0.1172, screenH * 0.0458) ) then
				dxLogin(userTxt, passTxt)
			elseif ( isMouseInPosition(screenW * 0.5031, screenH * 0.5625, screenW * 0.1172, screenH * 0.0458) ) then
				dxRegister(userTxt, passTxt)
			else
				itemSelected = nil
			end
		end
	end
end
)
--
bindKey("backspace", "down",
function()
	if ( visible == true ) then
		if ( itemSelected == "user-box" ) then
			userTxt = string.sub(userTxt, 1, #userTxt-1)
		elseif ( itemSelected == "pass-box" ) then
			passTxt = string.sub(passTxt, 1, #passTxt-1)
		end
	end
end
)
--
bindKey("tab", "down",
function()
	if ( visible == true ) then
		if ( itemSelected == "user-box" ) then
			itemSelected = "pass-box"
		elseif ( itemSelected == "pass-box" ) then
			itemSelected = "user-box"
		end
	end
end
)
--
addEventHandler("onClientCharacter", root,
function(t)
	if ( visible == true ) then
		if ( itemSelected == "user-box" ) then
			userTxt = userTxt..""..t
		elseif ( itemSelected == "pass-box" ) then
			passTxt = passTxt..""..t
		end
	end
end
)