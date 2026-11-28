class Api::AuthorsController < ApplicationController
  before_action :set_author, only: %i[ show ]

  def index
    render json: Author.all
  end

  def show
    render json: @author
  end

  private
    def set_author
      @author = Author.find(params.expect(:id))
    end
end
