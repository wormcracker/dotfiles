local lastSpeed = 1
local fileName = ""

local function showTimeInfo()
	local currentTime = os.date("%I:%M", os.time())
	local remainingTime = mp.get_property_number("playtime-remaining")
	local endTime = os.date("%I:%M", os.time() + remainingTime)
	local space = string.rep(" ", 170)
	local speed = mp.get_property("speed")

	mp.osd_message("")
	mp.osd_message(
		string.format(
			"File : %s\nCurrent time: %s %s Ends at: %s\nPlayback Speed: %.2fx\nRemaining Time: %s",
			fileName,
			currentTime,
			space,
			endTime,
			speed,
			os.date("!%H hour : %M minute", remainingTime)
		),
		25
	)
end

local function showTimeInfoOnHover()
	pcall(showTimeInfo)
end

local function updateFileInfo()
	fileName = mp.get_property("filename")
	showTimeInfoOnHover()
end

-- Bind the key "TAB" to the function showTimeInfoOnHover
mp.add_key_binding("TAB", "show-time-info", function()
	local currentTime = os.date("%I:%M", os.time())
	local remainingTime = mp.get_property_number("playtime-remaining")
	local endTime = os.date("%I:%M", os.time() + remainingTime)
	local space = string.rep(" ", 170)
	local speed = mp.get_property("speed")
	mp.osd_message("")
	mp.osd_message(
		string.format(
			"File : %s\nCurrent time: %s %s Ends at: %s\nPlayback Speed: %.2fx\nRemaining Time: %s",
			fileName,
			currentTime,
			space,
			endTime,
			speed,
			os.date("!%H hour : %M minute", remainingTime)
		),
		25
	)
end)

mp.add_key_binding("ESC", "hide-osd-messages", function()
	mp.osd_message("") -- Clear any existing OSD messages
end)

mp.observe_property("speed", "number", showTimeInfoOnHover)
mp.observe_property("playlist-pos", "number", updateFileInfo)
mp.register_event("file-loaded", updateFileInfo)

-- Trigger updateFileInfo when the script is loaded initially
updateFileInfo()
