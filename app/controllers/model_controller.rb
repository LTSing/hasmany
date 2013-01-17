class ModelController < ApplicationController
	before_filter :authenticate_model!
  def index
  end
end
