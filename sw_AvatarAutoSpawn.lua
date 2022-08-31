return function()
	load()
	
	local aSpawningActivatation = data.avatarsSpawningActivatation
	local aCustomSpawning = data.avatarsCustomSpawning
	local aNum = data.avatarsSpawningNumber
	local aCustomNum = data.avatarsCustomSpawningNumber
	
	if aSpawningActivatation == true then
		if aCustomSpawning == true then
			for inc = 1, aCustomNum do
				avatars = data.avatarsSpawningUsername[math.random(#data.avatarsSpawningUsername)]
				
				runCommand("!spawn " .. avatars)
			end
		else
			for inc = 1, aNum do
				local avatars = data.avatarsSpawningUsername[inc]
				
				runCommand("!spawn " .. avatars)
			end
		end
	end
end