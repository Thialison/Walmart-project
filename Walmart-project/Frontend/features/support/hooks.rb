After do  |scenario|
	time = Time.new
	day = time.day
	month = time.month
	year = time.year
	Dir.mkdir('report')unless Dir.exist?('report')

	sufix = ('fail' if scenario.failed?) || 'success'
	name = scenario.name.tr(' ', '_').downcase
	@page.save_screenshot("report/#{sufix}-#{day}_#{month}_#{year}-#{name}.png")
	embed("report/#{sufix}-#{day}_#{month}_#{year}-#{name}.png", 'image/png', 'Screenshot')
end