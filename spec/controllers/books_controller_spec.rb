require 'rails_helper'

describe BooksController do
  context 'POST #create' do
    let(:book_attributes) { FactoryGirl.attributes_for(:book) }

    context 'with valid attributes' do

      before do
        post :create,
        { book: book_attributes }
     end

      it 'creates a new book' do
        post :create, book: attributes_for(:book)
        # expect { post :create, book: book_attributes }.to change(Book, :count).by(1)
      end
      #
      # it 'redirects to new book page' do
      #   post :create, book: book_attributes
      #   expect(response).to redirect_to(assigns(:book))
      # end
    end

    context 'with invalid attributes' do
      let(:invalid_book) { FactoryGirl.attributes_for(:book, title: nil) }

      it 'does not create new books' do
        # expect { book :create, book: invalid_book }.to_not change(book, :count)
      end

      it 'renders new book page' do
        # book :create, book: invalid_book
        # expect(response).to render_template(:new)
      end
    end
  end
end
