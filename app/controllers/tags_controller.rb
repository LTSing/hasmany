class TagsController < ApplicationController

  def application
    @tags = Tag.all

    render :layout => "application"
  end

	def index
    @tags = Tag.all
  end

	def show
		@tag = Tag.find(params[:id])
	end
end
