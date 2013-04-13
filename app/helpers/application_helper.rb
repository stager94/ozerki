module ApplicationHelper
	def title(page_title)
		content_for :title do
			page_title
		end
	end

	def news_module
		news = New.displayed.limit(@module_news_per_page)
		render 'shared/modules/news', news: news
	end

	def generate_errors_list_for(errors = nil, type = 'full')
		result = ''
		if !errors.nil?
			if type == 'full'
				errors.full_messages.each do |message|
					result += "<li>#{message}</li>"
				end
			else
				errors.each do |attribute, message|
					result += "<li>#{message}</li>"
				end
			end
		else
			result = "<li>#{I18n.t 'errors.validates.empty'}</li>"
		end

		return result
	end
end