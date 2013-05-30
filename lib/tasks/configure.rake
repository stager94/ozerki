namespace :configure do
	task create_config: [:environment] do
		I18n.locale = :ru

		Configure.all.each { |u| u.destroy }

		configure = Configure.new
		configure[:site_title]           = I18n.t 'configure.site_title'
		configure[:title_separator]      = '-'
		configure[:news_per_page]        = 10
		configure[:module_news_per_page] = 3
		configure[:site_snippet]     	 	 = I18n.t 'configure.site_snippet'
		configure[:site_keywords]		     = I18n.t 'configure.site_keywords'

		if configure.save
			puts I18n.t 'configure.success'
		else
			puts I18n.t 'configure.fail'
		end
	end

	task create_map: [:environment] do
		houses = Array.new
		houses = [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30, 34, 35, 36]
		houses.each do |house|
			h = Apartment.new

			h.title           = "#{house}"
			h.room_number     = 3
			h.free_room       = 3
			h.display         = true
			h.apartment_class = "house_#{house}"
			h.free_place      = 6

			if h.save!
				puts "Room No. #{house} is successfully created"
			else
				puts "Sorry, but something went wrong!"
			end

		end
	end
end