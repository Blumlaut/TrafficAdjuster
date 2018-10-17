Citizen.CreateThread(function()
	while true do
		-- These natives has to be called every frame.
		SetVehicleDensityMultiplierThisFrame(TrafficAmount/100)
		SetPedDensityMultiplierThisFrame(PedestrianAmount/100)
		SetRandomVehicleDensityMultiplierThisFrame(TrafficAmount/100)
		SetParkedVehicleDensityMultiplierThisFrame(ParkedAmount/100)
		SetScenarioPedDensityMultiplierThisFrame(PedestrianAmount/100, PedestrianAmount/100)
		if not EnableDispatch then 
			for i = 1, 13 do
				EnableDispatchService(i, false)
			end
		else
			for i = 1, 13 do
				EnableDispatchService(i, true)
			end
		end
		Citizen.Wait(1)			
	end
end)