class Api::V1::BooksController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_book, only: [:show, :update]

  def index
    @books = policy_scope(Book)
  end

  def show
    true
  end

  def update
    if @book.update(book_params)
      render :show
    else
      render_error
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
    authorize @book
  end

  def book_params
    params.require(:book).permit(:title, :description, :slug)
  end

  def render_error
    render json: { errors: @restaurant.errors.full_messages },
    status: :unprocessable_entity
  end
end
