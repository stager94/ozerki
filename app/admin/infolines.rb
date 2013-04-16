ActiveAdmin.register Infoline do
  filter :title
  filter :route, as: :select, collection: [["#{I18n.t 'admin.collect.new'}", 'new'], ["#{I18n.t 'admin.collect.page'}", 'page'], ["#{I18n.t 'admin.collect.path'}", 'path']]
  filter :new
  filter :page
  filter :path
  filter :position
  filter :display

  index do
    selectable_column
    column :title
    column :route do |f|
      raw I18n.t "admin.collect.#{f.route}"
    end
    column :new
    column :page
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
  		row :path
  		row :new
  		row :page
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
      f.input :route, as: :select, collection: [["#{I18n.t 'admin.collect.new'}", 'new'], ["#{I18n.t 'admin.collect.page'}", 'page'], ["#{I18n.t 'admin.collect.path'}", 'path']]
      f.input :new
      f.input :page
      f.input :path
      f.input :position
      f.input :display
    end

    f.buttons
  end
end