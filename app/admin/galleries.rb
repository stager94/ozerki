ActiveAdmin.register Gallery do
	menu :parent => "#{I18n.t 'admin.menu.gallery'}"

	filter :category_gallery
	filter :title
	filter :author
	filter :display
	filter :display_on_root

	index as: :grid, columns: 4 do |image|
		if image.display_on_root
			link_to(admin_gallery_path(image)) do
				raw "<div class='main'></div> <img src='#{image.photo.url(:medium)}' />"
			end
		else
			link_to(image_tag(image.photo.url(:medium)), admin_gallery_path(image))
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
