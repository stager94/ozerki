ActiveAdmin.register Category::New do
	index do
		selectable_column
		column :id
		column :title
		column :parent_id
		column :display
		column "asdasd" do |f|
			link_to(admin_category_news_path(f), :method => :delete, :confirm => "Sure? A bunny will die")
		end
		default_actions
	end

	form do |f|
      f.inputs "Edit" do
 	      f.input :parent_id, :as => 'select', :collection => Hash[Category::New.main.map{|b| 
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
