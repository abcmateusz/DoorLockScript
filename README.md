# Door Toggle Script

## Description

This script allows you to toggle the collision of a door in a Roblox environment using a ClickDetector. When the user clicks on the object named `DoorLock`, the script changes the collision state of the object `Door`. If the collision is turned off, the door is open; otherwise, it is closed.

## Installation

1. Place the script in a `Script` object in Roblox Studio.
2. Ensure that the `Workspace` contains the objects `DoorLock` and `Door`.
3. Ensure that the `DoorLock` object has a `ClickDetector` component.

## How It Works

- The script searches for the `DoorLock` and `Door` objects in the `Workspace`.
- If the `DoorLock` object contains a `ClickDetector` component, the script assigns the `toggleDoor` function to the `MouseClick` event.
- The `toggleDoor` function toggles the `CanCollide` property of the `Door` object, allowing the door to be opened and closed.

## Functions

- **toggleDoor**: A function that changes the `CanCollide` state of the `Door` object.

## Requirements

- Roblox Studio
- `DoorLock` and `Door` objects in `Workspace`
- `ClickDetector` in the `DoorLock` object

## Example

Here is the code that can be placed in Roblox Studio:

```lua
local doorLock = workspace:FindFirstChild("DoorLock")
local door = workspace:FindFirstChild("Door")

local clickDetector = doorLock and doorLock:FindFirstChildOfClass("ClickDetector")

local function toggleDoor()
	if door then
		if door:IsA("BasePart") then
			door.CanCollide = not door.CanCollide
			local state = door.CanCollide and "closed" or "open"
			print("The door is now " .. state .. ".")
		else
			warn("'Door' is not a BasePart object.")
		end
	else
		warn("'Door' object not found in Workspace.")
	end
end

if clickDetector then
	clickDetector.MouseClick:Connect(toggleDoor)
else
	warn("ClickDetector not found in 'DoorLock'.")
end
```
---
Author
@abcMateusz
