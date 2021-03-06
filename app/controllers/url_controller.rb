class UrlController < ApplicationController
	


	def create
		@url = Url.new(url_params)
		@url.shorten
		if @url.save
			redirect_to @url
		else
			render 'new'
		end
	end

	def new
		@url = Url.new
	end

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

	def destroy
		@url = Url.find(params[:id])
		@url.destroy
		redirect_to url_index_path
	end

	def short
		url = Url.find(params[:id])
		redirect_to url.long_url
	end

	private

	def url_params
		params.require(:url).permit(:long_url)
	end
end
