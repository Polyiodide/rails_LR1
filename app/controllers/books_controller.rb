class BooksController < ApplicationController
  def index
    render json: Book.all
  end

  def show
    render json: Book.find(params[:id])
  end

  def new
    Book.create(book_params)
  end

  def patch
    Book.find(params[:id]).update(book_params)
  end

  def delete
    Book.find(params[:id]).delete
  end

  private
  def book_params
    params.expect(book: [:title, :author_id, :category_id])
  end
end
