ActiveAdmin.register New do
	menu :parent => "#{I18n.t 'admin.menu.materials'}"

	scope I18n.t('admin.scope.news'), :admin_news
	scope I18n.t('admin.scope.root'), :admin_root

	index do
		selectable_column
		column :id
		column :title do |f|
			raw "#{f.title} <h6>#{f.slug}</h6>"
		end

		column :category_new_id do |f|
			link_to "#{f.category.title}", admin_category_news_path(f.category) unless !f.category_new_id
		end

		column :display do |f|
  		if f.display == true
  			raw "<span class='status_tag complete'>true</span>"
  		else
  			raw "<span class='status_tag in_progress'>false</span>"
  		end
		end

		column :root do |f|
  		if f.root == true
  			raw "<span class='status_tag complete'>true</span>"
  		else
  			raw "<span class='status_tag in_progress'>false</span>"
  		end
		end

		column :position
		column :author
		default_actions
	end


	form do |f|
		f.inputs I18n.t 'admin.general' do 
			f.input :title
			f.input :slug

			f.input :category_new_id, as: 'select', collection: Hash[CategoryNew.main.map{|b| 
	      	@tabs = '----'*b.level
	      	[@tabs+b.title, b.id]}]
	  end
	  f.inputs I18n.t 'admin.short' do
			f.input :precontent, :input_html => {:class => "ckeditor"}, label: false
		end

		f.inputs I18n.t 'admin.full' do
			f.input :content, :input_html => {:class => "ckeditor"}, label: false
		end

		f.inputs I18n.t 'admin.additional' do
			f.input :display
			f.input :root
			f.input :position
		end

		f.inputs I18n.t 'admin.seo' do
			f.input :snippet
			f.input :tag_list
			f.input :author
		end

		f.buttons
	end

end
