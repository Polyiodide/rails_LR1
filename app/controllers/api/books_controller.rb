class Api::BooksController < ApplicationController
  before_action :set_book, only: %i[ show update destroy ]

  def index
    render json: Book.all
  end

  def show
    render json: @book
  end

  def create
    render json: Book.create(book_params)
  end

  def update
    @book.update(book_params)
    render json: @book
  end

  def destroy
    if @book.destroy
      render json: @book, status: 200
    else
      render json: @book, status: 400
    end
  end

  private
    def set_book
      @book = Book.find(params.expect(:id))
    end

    def book_params
      params.expect(book: [:title, :author_id, :category_id])
    end
end
