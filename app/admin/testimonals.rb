ActiveAdmin.register Testimonal do
	I18n.locale = :ru
	menu :parent => I18n.t('admin.menu.news')
	
	filter :author
	filter :email
	filter :address
	filter :display, as: :select

	show do |testimonal|
		attributes_table do
			row :testimonal
			row :author
			row :email
			row :display do |f|
  			if f.display == true
  				raw "<span class='status_tag complete'>true</span>"
  			else
  				raw "<span class='status_tag in_progress'>false</span>"
  			end
		end
			row :created_at
			row :updated_at
		end
	end

	index do
		selectable_column
		column :testimonal do |f|
			raw "#{truncate f.testimonal, length: 100, separator: ' '}"
		end
		column :author
		column :address
		column :email
		column :display do |f|
  		if f.display == true
  			raw "<span class='status_tag complete'>true</span>"
  		else
  			raw "<span class='status_tag in_progress'>false</span>"
  		end
		end
		column :created_at
		column :updated_at
		default_actions
	end  
end
