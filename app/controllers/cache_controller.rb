class CacheController < ApplicationController
	def clear_fragment
		binding.pry
		name = params[:name]
		expire name
	end
end
