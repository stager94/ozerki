ActiveAdmin.register Social do
  menu :parent => I18n.t('admin.menu.settings')

  filter :title
  filter :image_class
  filter :path
  filter :position
  filter :display


  form do |f|
    f.inputs I18n.t 'admin.general' do
      f.input :title
      f.input :path
      f.input :image_class, as: :select, collection: [["#{I18n.t('socials.vk')}", "vkontakte"], 
                                                      ["#{I18n.t('socials.facebook')}", "facebook"], 
                                                      ["#{I18n.t('socials.twitter')}", "twitter"],
                                                      ["#{I18n.t('socials.odnoklassniki')}", "odnoklassniki"],
                                                      ["#{I18n.t('socials.youtube')}", "youtube"]]
      f.input :position
      f.input :display
    end
    f.buttons
  end

  index do
  	selectable_column
  	column :title
  	column :path
    column :image_class do |f|
    	raw "<div class='social-icon #{f.image_class}'></div> #{f.image_class}"
    end
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
  		row :path
      row :image_class
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
