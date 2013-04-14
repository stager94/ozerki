ActiveAdmin.register Configure do
	config.clear_sidebar_sections!
	config.batch_actions = false
	config.clear_action_items!

  index as: :block, download_links: false do |configure|
  	div for: configure do
	  	h2 "#{I18n.t('activerecord.models.configure')}"
	  	attributes_table_for Configure.first, :site_title, :title_separator, :news_per_page, :module_news_per_page, :site_snippet, :site_keywords
	  	div do
	  		link_to "#{I18n.t 'admin.edit'}", edit_admin_configure_path(configure)
	  	end
	  end
  end

  show do |configure|
  	attributes_table do
  		row :site_title
  		row :title_separator
  		row :news_per_page
  		row :module_news_per_page
  		row :site_snippet
  		row :site_keywords
  	end
  end
end
