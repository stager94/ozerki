ActiveAdmin.register CategoryNew do
  I18n.locale = :ru
  menu :parent => "#{I18n.t 'admin.menu.category'}"

  filter :parent_id
  filter :title
  filter :display

  member_action :move_to_left do
  	category = CategoryNew.find(params[:id])
  	category.move_left
  	redirect_to collection_path, notice: "Successfully moved!"
  end


  member_action :move_to_right do
  	category = CategoryNew.find(params[:id])
  	category.move_right
  	redirect_to collection_path, notice: "Successfully moved!"
  end

	index do
		selectable_column
		column :id
		column :title
		column :parent_id do |category|
      link_to CategoryNew.find(category.parent_id).title, admin_category_news_path(category.parent_id) if category.parent_id
    end
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
      link_to "#{I18n.t 'admin.category.up'}", move_to_right_admin_category_news_path(category)
    end
		column "" do |category|
      link_to "#{I18n.t 'admin.category.down'}", move_to_left_admin_category_news_path(category)
    end
		default_actions
	end

  show do
    attributes_table do
      row :title
      row :parent_id do |category|
        link_to CategoryNew.find(category.parent_id).title, admin_category_news_path(category.parent_id) if category.parent_id
      end
      row :display do |category|
        if category.display == true
          raw "<span class='status_tag complete'>true</span>"
        else
          raw "<span class='status_tag in_progress'>false</span>"
        end
      end
    end
  end

	form do |f|
      f.inputs "Edit" do
	      f.input :parent_id, as: :select, collection: nested_set_options(CategoryNew) {|i| "#{'--' * i.level} #{i.title}" }
  	  	f.input :title
 				f.input :slug
 				f.input :snippet
 				f.input :keywords
  	  	f.input :display
  	end
  	f.buttons
  end    
end
