ActiveAdmin.register Gallery do
	# index do
	# 	selectable_column
	# 	column :photo do |image|
	# 		image_tag "#{image.photo.url}", style: "max-width: 200px;"
	# 	end
	# 	column :title
	# 	column :category_gallery do |category|
	# 		link_to admin_category_gallery_path(category) do
	# 			raw "#{category.category_gallery.id} - #{category.category_gallery.title}"
	# 		end
	# 	end
	# 	default_actions
	# end

	filter :category_gallery
	filter :title
	filter :author
	filter :display
	filter :display_on_root

	index as: :grid, columns: 5 do |image|
		if image.display_on_root
			link_to(image_tag(image.photo.url(:medium)), admin_gallery_path(image), class: "main")
		else
			link_to(image_tag(image.photo.url(:medium)), admin_gallery_path(image)) if !image.display_on_root
		end
	end

	show do
		attributes_table do
			row :photo do |f|
				image_tag f.photo.url(:medium)
			end
			row :title
			row :slug
			row :description
			row :author
			row :keywords
			row :display do |f|
	  		if f.display == true
	  			raw "<span class='status_tag complete'>true</span>"
	  		else
	  			raw "<span class='status_tag in_progress'>false</span>"
	  		end
			end
			row :display_on_root do |f|
				if f.display_on_root == true
	  			raw "<span class='status_tag complete'>true</span>"
	  		else
	  			raw "<span class='status_tag in_progress'>false</span>"
	  		end
			end
		end
	end

  form do |f|
  	f.inputs "#{I18n.t 'admin.general'}" do
  		f.input :category_gallery_id, as: :select, collection: nested_set_options(CategoryGallery) {|i| "#{'--' * i.level} #{i.title}" }
  		f.input :title
  		f.input :slug
  		f.input :photo, as: :file
  		f.input :description
  		f.input :author
  		f.input :keywords
  		f.input :display
  		f.input :display_on_root
  	end

  	f.buttons
	end
end
