class BooksController < ApplicationController
    def index
        books = Book.all
          render json:books, status: :ok
      end
      def create
          book= @current_user.books.create!(book_params)
          render json: book, status: :created
      end
      def destroy
        # user = User.find(session[:user_id])
        book=find_book
        book.destroy
        head :no_content
      end
      private
      def book_params
          params.permit(:title,:author_id,:publication_year,:image,:user_id)
      end
      
      def find_book
        Book.find_by(id: params[:id])
    end


end
