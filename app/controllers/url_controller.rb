class UrlController < ApplicationController
	def index
		@urls = Url.all
	end

	def show
		@url = Url.find(params[:id])
		# if url_id.nil?
		# 	@urls = Url.all
		# else
		# 	@url = Url.find(url_id)
		# end
	end

	def new
		@url = Url.new
	end
end
