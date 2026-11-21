class CategoryController < ApplicationController
  def index
    render json: Category.all
  end

  def show
    render json: Catergory.find(params[:id])
  end
end
