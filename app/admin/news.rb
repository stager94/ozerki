ActiveAdmin.register New do

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

		column :author
		default_actions
	end


	form do |f|
		f.inputs "General Information" do 
			f.input :title
			f.input :slug

			f.input :category_new_id, :as => 'select', :collection => Hash[Category::New.main.map{|b| 
	      	@tabs = '----'*b.level
	      	[@tabs+b.title, b.id]}]

			f.input :precontent
			f.input :content
			f.input :display
			f.input :root
		end

		f.inputs "SEO Information" do
			f.input :snippet
			f.input :tag_list
			f.input :author
		end

		f.buttons
	end

end
