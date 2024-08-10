local doorLock = workspace:FindFirstChild("DoorLock")
local door = workspace:FindFirstChild("Door")

local clickDetector = doorLock and doorLock:FindFirstChildOfClass("ClickDetector")

local function toggleDoor()
	if door then
		if door:IsA("BasePart") then
			door.CanCollide = not door.CanCollide
			local state = door.CanCollide and "zamknięte" or "otwarte"
			print("Drzwi są teraz " .. state .. ".")
		else
			warn("Obiekt 'Door' nie jest typu BasePart.")
		end
	else
		warn("Nie znaleziono obiektu 'Door' w Workspace.")
	end
end

if clickDetector then
	clickDetector.MouseClick:Connect(toggleDoor)
else
	warn("Brak ClickDetector w obiekcie 'DoorLock'.")
end

-- @abcMateusz
