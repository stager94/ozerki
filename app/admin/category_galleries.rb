ActiveAdmin.register CategoryGallery do
  I18n.locale = :ru
  menu :parent => "#{I18n.t 'admin.menu.category'}"
  
  filter :parent_id
  filter :title
  filter :display, as: :select

  batch_action :destroy do |selection|
  	CategoryGallery.find(selection).each do |cat|
  		cat.delete
  	end
  	redirect_to collection_path, notice: "Successfully deleted!"
  end

  member_action :move_to_left do
  	category = CategoryGallery.find(params[:id])
    category.move_left if category.level > 0
  	redirect_to collection_path, notice: "Successfully moved!"
  end


  member_action :move_to_right do
  	category = CategoryGallery.find(params[:id])
  	category.move_right
  	redirect_to collection_path, notice: "Successfully moved!"
  end


	index do
		selectable_column
		column :id
		column :title
		column :parent_id do |category|
      link_to CategoryGallery.find(category.parent_id).title, admin_category_gallery_path(category.parent_id) if category.parent_id
    end
		# column :lft
		# column :rgt
    column :galleries_count
		column "#{I18n.t 'admin.category.level'}" do |category|
			raw "#{category.lft/2}"
		end
		column :display do |f|
  		if f.display == true
  			raw "<span class='status_tag complete'>true</span>"
  		else
  			raw "<span class='status_tag in_progress'>false</span>"
  		end
		end
		column "" do |category|
      link_to "#{I18n.t 'admin.category.up'}", move_to_right_admin_category_gallery_path(category)
    end
		column "" do |category|
      link_to "#{I18n.t 'admin.category.down'}", move_to_left_admin_category_gallery_path(category)
    end
		default_actions
	end

  show do
    attributes_table do
      row :title
      row :parent_id do |cat|
        link_to CategoryGallery.find(cat.parent_id).title, admin_category_gallery_path(cat.parent_id) if cat.parent_id
      end
      row :galleries_count
      row :display do |f|
        if f.display == true
          raw "<span class='status_tag complete'>true</span>"
        else
          raw "<span class='status_tag in_progress'>false</span>"
        end
      end
    end
  end

	form do |f|
      f.inputs "Edit" do
 	      f.input :parent_id, as: :select, collection: nested_set_options(CategoryGallery) {|i| "#{'--' * i.level} #{i.title}" }
  	  	f.input :title
 				f.input :slug
 				f.input :snippet
 				f.input :keywords
  	  	f.input :display
  	end
  	f.buttons
  end  
end
