ActiveAdmin.register Video do
	menu :parent => "#{I18n.t 'admin.menu.gallery'}"

  filter :title
  filter :path
  filter :display
  filter :position

  index do
  	selectable_column
  	column :title
  	column :description
  	column :path
  	column :display do |f|
			if f.display == true
				raw "<span class='status_tag complete'>true</span>"
			else
				raw "<span class='status_tag in_progress'>false</span>"
			end	
  	end
  	column :position
  	default_actions
  end

  show do
  	attributes_table do
  		row :title
  		row :description
  		row :path
  		row :display do |f|
				if f.display == true
					raw "<span class='status_tag complete'>true</span>"
				else
					raw "<span class='status_tag in_progress'>false</span>"
				end	
  		end
  		row :position
  	end
  end
end
