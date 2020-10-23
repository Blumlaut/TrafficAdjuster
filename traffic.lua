Citizen.CreateThread(function()
	for i = 1, 15 do
		EnableDispatchService(i, EnableDispatch)
	end
	while true do
		SetVehicleDensityMultiplierThisFrame((TrafficAmount/100)+.0)
		SetPedDensityMultiplierThisFrame((PedestrianAmount/100)+.0)
		SetRandomVehicleDensityMultiplierThisFrame((TrafficAmount/100)+.0)
		SetParkedVehicleDensityMultiplierThisFrame((ParkedAmount/100)+.0)
		SetScenarioPedDensityMultiplierThisFrame((PedestrianAmount/100)+.0, (PedestrianAmount/100)+.0)
		SetRandomBoats(EnableBoats)
		SetRandomTrains(EnableTrains)
                SetGarbageTrucks(EnableGarbageTrucks)
		Wait(0) -- These natives has to be called every frame.
	end
end)
