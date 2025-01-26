addEvent("dx:login", true)
addEventHandler("dx:login", root,
function(user, pass)
	if ( getAccount(user) ) then
		if ( getAccount(user, pass) ) then
			if ( logIn(source, getAccount(user), pass) ) then
				triggerClientEvent(source, "dx:close", source)
				outputChatBox("* Haz ingresado exitosamente a tu cuenta, Bienvenido!", source, 0, 255, 0, true)
			else
				outputChatBox("* Hubo un error inesperado! Reconecta e intentalo nuevamente. Si el problema persiste, reporta esto con un administrador!", source, 255, 0, 0, true)
			end
		else
			outputChatBox("* La clave es incorrecta", source, 255, 0, 0, true)
		end
	else
		outputChatBox("* La cuenta seleccionada no existe!", source, 255, 0, 0, true)
	end
end
)
----
addEvent("dx:register", true)
addEventHandler("dx:register", root,
function(user, pass)
	if ( not getAccount(user) ) then
		if ( addAccount (user, pass, true ) ) then
			logIn(source, getAccount(user), pass)
			triggerClientEvent(source, "dx:close", source)
			outputChatBox("* Haz creado una cuenta exitosamente, Bienvenido!", source, 0, 255, 0, true)
			outputChatBox("* Usuario:#FFFFFF "..user.."#00FF00, Clave: #FFFFFF"..pass.."#00FF00. No olvides estos datos!", source, 0, 255, 0, true)
		else
			outputChatBox("* Ha ocurrido un error inesperado. Reporta esto con un administrador!", source, 255, 0, 0, true)
		end
	else
		outputChatBox("* La cuenta seleccionada ya existe, intenta otra!", source, 255, 0, 0, true)
	end
end
)