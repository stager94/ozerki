require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'http://ozerki.dn.ua'
SitemapGenerator::Sitemap.create do
  add '/', :changefreq => 'daily', :priority => 0.9
  add '/testimonals', :changefreq => 'weekly'
  add '/gallery', :changefreq => 'weekly'
  add '/video', :changefreq => 'weekly'
  Page.find_each do |page|
    add page_path(page), lastmod: page.updated_at
  end
  New.displayed.find_each do |news|
  	add category_news_news_path(news.category_new, news), lastmod: news.updated_at
  end
end
# SitemapGenerator::Sitemap.ping_search_engines # Not needed if you use the rake tasks