class TagsController < ApplicationController
	def show
		@tag = Tag.find(params[:id])
	end

	def index
		@tag = Tag.all
	end

	def destroy
		@tag = Tag.destroy(params[:id])
		@tag.destroy
		
		flash.notice = "Tag '#{@tag.name}' Destroyed!"

		redirect_to action: "index"
	end
end
