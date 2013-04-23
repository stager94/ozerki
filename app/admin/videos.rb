ActiveAdmin.register Video do
	menu :parent => "#{I18n.t 'admin.menu.gallery'}"

  filter :title
  filter :path
  filter :display, as: :select
  filter :position

  index do
  	selectable_column
  	column :image do |f|
  		image_tag f.draw(:default)
  	end
  	column :title
  	column :duration
  	column :description do |f|
      raw "#{truncate f.description}"
    end
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
  		row :duration
  		row :image do |f|
  			image_tag f.draw(:mqdefault)
  		end
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

  form do |f|
  	f.inputs I18n.t 'admin.general' do
  		f.input :title
  		f.input :path
  		f.input :image, as: :file
  		f.input :description
  		f.input :display
  		f.input :position
  	end

  	f.buttons
  end
end
