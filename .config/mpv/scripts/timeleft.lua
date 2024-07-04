local lastSpeed = 1
local fileName = ""
local currentChapter = ""

local function showTimeInfo()
	local currentTime = os.date("%I:%M", os.time())
	local remainingTime = mp.get_property_number("playtime-remaining")
	local endTime = os.date("%I:%M", os.time() + remainingTime)
	local space = string.rep(" ", 170)
	local speed = mp.get_property("speed")
	local chapter = currentChapter ~= "" and currentChapter or "No Chapter" -- Handling if chapter is not available
	local chapterTitle = mp.get_property("chapter-metadata/title") -- Retrieve chapter title
	mp.osd_message("") -- Clear any existing OSD messages
	mp.osd_message(
		string.format(
			"File : %s\nCurrent time: %s %s Ends at: %s\nPlayback Speed: %.2fx\nRemaining Time: %s\nChapter [ %s ] %s ",
			fileName,
			currentTime,
			space,
			endTime,
			speed,
			os.date("!%H hour : %M minute", remainingTime),
			chapter,
			chapterTitle
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

local function updateChapterInfo()
	currentChapter = mp.get_property("chapter")
	showTimeInfoOnHover()
end

-- Bind the key "TAB" to the function showTimeInfoOnHover
mp.add_key_binding("TAB", "show-time-info", showTimeInfoOnHover)

mp.add_key_binding("ESC", "hide-osd-messages", function()
	mp.osd_message("") -- Clear any existing OSD messages
end)

mp.observe_property("speed", "number", showTimeInfoOnHover)
mp.observe_property("playlist-pos", "number", updateFileInfo)
mp.observe_property("chapter", "string", updateChapterInfo)
mp.register_event("file-loaded", updateFileInfo)
mp.register_event("chapter-change", updateChapterInfo)

-- Trigger updateFileInfo when the script is loaded initially
updateFileInfo()
