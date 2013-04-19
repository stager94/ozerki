ActiveAdmin.register Apartment do
	filter :title
	filter :class
	filter :room_number
	filter :free_room
	filter :display

	index do
		selectable_column
		column :title
		column :apartment_class
		column :room_number
		column :free_room
		column :display do |f|
      if f.display == true
        raw "<span class='status_tag complete'>true</span>"
      else
        raw "<span class='status_tag in_progress'>false</span>"
      end
		end
		default_actions
	end

	show do
		attributes_table do
			row :title
			row :apartment_class
			row :room_number
			row :free_room
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
		f.inputs I18n.t('admin.general') do
			f.input :title
			f.input :apartment_class
			f.input :room_number
			f.input :free_room
			f.input :display
		end

		f.buttons
	end
end