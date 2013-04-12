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
end