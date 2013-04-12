ActiveAdmin.register Page do
	index do
		selectable_column
		column :title
		column :slug
		column :author
		column :created_at
		column :updated_at
		default_actions
	end

	form do |f|
		f.inputs I18n.t 'admin.general' do
			f.input :title
			f.input :slug
		end

		f.inputs I18n.t 'admin.text' do
			f.input :text, :input_html => {:class => "ckeditor"}, label: false
		end

		f.inputs I18n.t 'admin.seo' do
			f.input :snippet
			f.input :keywords
			f.input :author
		end

		f.buttons
	end  
end
