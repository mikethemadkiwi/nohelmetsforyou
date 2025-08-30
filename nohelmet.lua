Citizen.CreateThread( function()

	while true do
		Citizen.Wait(0)		
		local playerPed = GetPlayerPed(-1)
		local playerVeh = GetVehiclePedIsUsing(playerPed)
		SetPedConfigFlag(playerPed, 35, true) -- do not use helmets
		SetPedConfigFlag(playerPed, 380, true) -- do not autoenable helmets		
		if playerVeh ~= 0 then RemovePedHelmet(playerPed,true) end -- remove helmet if i am trying to wear one, or if i already am
    -- ^^ this line will remove helmets ALWAYS. regardless of if it is wanted, one of your devs will have to put it in as a choice not forced. 
	end
	
end)
