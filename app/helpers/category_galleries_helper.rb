module CategoryGalleriesHelper
	def get_params_to_page(category, all_categories)
		res = Array.new
		return_res = Hash.new

		all_categories.each do |cat|
			res << cat if cat.root == category
		end
		puts res

		# category_image = Gallery.where('category_gallery_id IN (?)', res).order('RANDOM()') if Rails.env.development?
		category_image = Gallery.where('category_gallery_id IN (?)', res).order('RAND()')
		
		count = 0
		res.each do |cat|
			count = count+cat.galleries_count
		end

		return_res['count']  = count
		return_res['images'] = category_image

		return return_res
	end
	def get_params_to_cat_page(category, all_categories)
		res = Array.new
		return_res = Hash.new

		res << category

		all_categories.each do |cat|
			res << cat if cat.parent == category
		end
		puts res

		# category_image = Gallery.where('category_gallery_id IN (?)', res).order('RANDOM()') if Rails.env.development?
		category_image = Gallery.where('category_gallery_id IN (?)', res).order('RAND()')
		
		count = 0
		res.each do |cat|
			count = count+cat.galleries_count
		end

		return_res['count']  = count
		return_res['images'] = category_image

		return return_res
	end
end
