ActiveAdmin.register Testimonal do
	filter :author
	filter :email
	filter :address
	filter :display

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
