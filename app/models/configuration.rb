class Configuration < ActiveRecord::Base
  attr_accessible :site_title, :title_separator, :news_per_page, :module_news_per_page
end
