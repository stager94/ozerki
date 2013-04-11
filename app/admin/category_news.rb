ActiveAdmin.register CategoryNew do
	index do
		selectable_column
		column :id
		column :title
		column :parent_id
		column :display
		default_actions
	end

	form do |f|
      f.inputs "Edit" do
 	      f.input :parent_id, :as => 'select', :collection => Hash[CategoryNew.main.map{|b| 
	      	@tabs = '----'*b.level
	      	[@tabs+b.title, b.id]}]
  	  	f.input :title
 				f.input :slug
 				f.input :snippet
 				f.input :keywords
  	  	f.input :display
  	end
  	f.buttons
  end    
end