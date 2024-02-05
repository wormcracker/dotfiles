mp.add_key_binding("TAB", "show-time-info", function()
	local currentTime = os.date("%I:%M:%S", os.time())
	local remainingTime = mp.get_property("playtime-remaining")
	local endTime = os.date("%I:%M:%S", os.time() + remainingTime)

	mp.osd_message(string.format("🕛 Current time: %s  ➡  Ends at: %s", currentTime, endTime), 10)
end)
