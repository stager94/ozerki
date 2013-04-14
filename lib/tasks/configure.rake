namespace :configure do
	task create_config: [:environment] do
		I18n.locale = :ru

		configure = Configure.new
		configure[:site_title]           = I18n.t 'configure.site_title'
		configure[:title_separator]      = '-'
		configure[:news_per_page]        = 10
		configure[:module_news_per_page] = 3
		configure[:site_snippet]     	 	 = I18n.t 'configure.site_snippet'
		configure[:site_description]		 = I18n.t 'configure.site_description'

		if configure.save
			puts I18n.t 'configure.success'
		else
			puts I18n.t 'configure.fail'
		end
	end
end