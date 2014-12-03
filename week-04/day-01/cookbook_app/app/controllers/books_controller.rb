class BooksController < ApplicationController
  def index
  	@books = Book.all
  end

  def new
  	@book = Book.new
  end

  def create
  	@book = Book.new book_params
  	if @book.save
      flash[:message] = "You made a book"
  		redirect_to @book
    else
      render :new
    end
  end

  def edit
    @book = Book.find params[:id]
  end

  def update
  	@book = Book.find params[:id]
  	if @book.update book_params
      redirect_to @book
  	else 
      render 'edit'
  	end
  end

  def show
  	@book = Book.find params[:id]
  end

  def destroy
    @book = Book.find params[:id]
    @book.destroy
    redirect_to books_path
  end

  private 
  def book_params
  	params.require(:book).permit(:title, :cuisine, :chef, :image)
  end
end
