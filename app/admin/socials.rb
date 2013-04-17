ActiveAdmin.register Social do
  menu :parent => I18n.t('admin.menu.settings')

  filter :title
  filter :path
  filter :position
  filter :display

  index do
  	selectable_column
		column :image do |f|
  		image_tag f.image
  	end
  	column :title
  	column :path
  	column :display do |f|
  		if f.display == true
  			raw "<span class='status_tag complete'>true</span>"
  		else
  			raw "<span class='status_tag in_progress'>false</span>"
  		end  		
  	end
  	column :position
  end

  show do
  	attributes_table do
  		row :title
  		row :path
  		row :image do |f|
  			image_tag f.image
  		end
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
  		f.input :position
  		f.input :display
  	end
  	f.buttons
  end
end
