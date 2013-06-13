ActiveAdmin.register Configure do
  menu :parent => I18n.t('admin.menu.settings')

	config.clear_sidebar_sections!

  index as: :block, download_links: false do |configure|
  	div for: configure do
	  	h2 "#{I18n.t('activerecord.models.configure')}"
	  	attributes_table_for Configure.first, :site_title, :title_separator, :news_id, :news_per_page, :module_news_per_page, :site_snippet, :site_keywords, :book_email, :book_days_num
	  	div do
	  		link_to "#{I18n.t 'admin.edit'}", edit_admin_configure_path(configure)
	  	end
	  end
  end

  show do
  	attributes_table do
  		row :site_title
  		row :title_separator
      row :news_id do |news|
        CategoryNew.find(news.news_id).title if !news.news_id.blank?
      end
  		row :news_per_page
  		row :module_news_per_page
  		row :site_snippet
  		row :site_keywords
      row :book_email
      row :book_days_num
  	end
  end

  form do |f|
    f.inputs "#{I18n.t 'admin.general'}" do
      f.input :site_title
      f.input :title_separator
      f.input :news_id, as: :select, collection: nested_set_options(CategoryNew) {|i| "#{'--' * i.level} #{i.title}" }
      f.input :news_per_page
      f.input :module_news_per_page
      f.input :site_snippet
      f.input :site_keywords
      f.input :book_email
      f.input :book_days_num
    end
    f.buttons
  end
end
