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

	index as: :grid, columns: 5 do |image|
		link_to(image_tag(image.photo.url(:medium)), admin_gallery_path(image))
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
  	end

  	f.buttons
	end
end
