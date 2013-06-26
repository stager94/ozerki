class Configure < ActiveRecord::Base
  attr_accessible :email, :module_news_per_page, :news_per_page, :site_title, :title_separator, :site_keywords, :site_snippet, :news_id, :book_email, :book_days_num, :book_excel
  has_attached_file :book_excel
end
