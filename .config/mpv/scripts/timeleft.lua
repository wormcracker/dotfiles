local lastSpeed = 1

local function showTimeInfo()
	local currentTime = os.date("%I : %M", os.time())
	local remainingTime = mp.get_property_number("playtime-remaining")
	local endTime = os.date("%I : %M", os.time() + remainingTime)
	local space = string.rep(" ", 170)
	local speed = mp.get_property("speed")

	-- Check if the playback time has changed or if the video is paused
	if speed ~= lastSpeed then
		lastSpeed = speed
		mp.osd_message("")
		mp.osd_message(
			string.format(
				"Current time: %s %s Ends at: %s\nPlayback Speed: %.2fx\nRemaining Time: %s",
				currentTime,
				space,
				endTime,
				speed,
				os.date("!%H hour : %M minute", remainingTime)
			),
			25
		)
	end
end

local function showTimeInfoOnHover()
	pcall(showTimeInfo)
end

-- Bind the key "TAB" to the function showTimeInfoOnHover
mp.add_key_binding("TAB", "show-time-info", function()
	local currentTime = os.date("%I : %M", os.time())
	local remainingTime = mp.get_property_number("playtime-remaining")
	local endTime = os.date("%I : %M", os.time() + remainingTime)
	local space = string.rep(" ", 170)
	local speed = mp.get_property("speed")
	mp.osd_message("")
	mp.osd_message(
		string.format(
			"Current time: %s %s Ends at: %s\nPlayback Speed: %.2fx\nRemaining Time: %s",
			currentTime,
			space,
			endTime,
			speed,
			os.date("!%H hour : %M minute", remainingTime)
		),
		25
	)
end)

mp.observe_property("speed", "number", showTimeInfoOnHover)
mp.register_event("file-loaded", showTimeInfoOnHover)
