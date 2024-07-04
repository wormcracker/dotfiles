function showChapterList()
	local chapters = mp.get_property_native("chapter-list", {})

	if #chapters == 0 then
		mp.osd_message("No chapters available")
		return
	end

	local current_time = mp.get_property_number("time-pos")
	local current_chapter_index = 0

	for i, chapter in ipairs(chapters) do
		local start_time = chapter.time or 0
		local end_time = chapters[i + 1] and chapters[i + 1].time or mp.get_property_number("duration")

		if current_time >= start_time and current_time < end_time then
			current_chapter_index = i
			break
		end
	end

	local current_play_time = formatTime(current_time)
	local chapterList =
		string.format("Chapters: [%d/%d] - Current Time [ %s ]\n", current_chapter_index, #chapters, current_play_time)

	for i, chapter in ipairs(chapters) do
		local start_time = chapter.time or 0
		local marker = i == current_chapter_index and " 󰁕 " or " "
		chapterList = chapterList .. string.format("[%s] %s [%s]\n", formatTime(start_time), marker, chapter.title)
	end

	mp.osd_message(chapterList, 15)
end

function formatTime(seconds)
	local hours = math.floor(seconds / 3600)
	local minutes = math.floor(seconds / 60) % 60
	return string.format(" %02d : %02d ", hours, minutes)
end

mp.add_key_binding("c", "show_chapters", showChapterList)
