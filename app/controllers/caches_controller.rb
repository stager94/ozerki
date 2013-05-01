class CachesController < ApplicationController
	def clear_fragment
		name = params[:name]

		expire_fragment name
		redirect_to admin_root_path, notice: "Cache is successfully clear"
	end
end
