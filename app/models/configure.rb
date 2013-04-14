class Configure < ActiveRecord::Base
  attr_accessible :module_news_per_page, :news_per_page, :site_title, :title_separator, :site_keywords, :site_snippet, :news_id
end
