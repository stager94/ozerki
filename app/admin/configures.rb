ActiveAdmin.register Configure do
	config.clear_action_items!
  index as: :block do |config|
  	div for: config do
	  	h2 "#{I18n.t('activerecord.models.configure')}"
	  	attributes_table_for Configure.first, :site_title, :title_separator, :news_per_page, :module_news_per_page, :site_snippet, :site_keywords
	  	div do
	  		link_to "Edit", edit_admin_configure_path(config)
	  	end
	  end
  end
end
