class AddPhotosCount < ActiveRecord::Migration
	def self.up
	  add_column :category_galleries, :galleries_count, :integer, :default => 0

	  CategoryGallery.reset_column_information
	  CategoryGallery.find(:all).each do |p|
	    CategoryGallery.update_counters p.id, :galleries_count => p.galleries.length
	  end
	end

	def self.down
	  remove_column :category_galleries, :galleries_count
	end
end
