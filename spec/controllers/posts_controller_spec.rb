require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  context 'POST #create' do
    let(:post_attributes) { FactoryGirl.attributes_for(:post) }

    context 'with valid attributes' do
      it 'creates a new post' do
        expect { post :create, post_attributes }.to change(Post, :count).by(1)
      end

      it 'redirects to new post page' do
        post :create, post: post_attributes
        expect(response).to redirect_to(assigns(:post))
      end
    end

    context 'with invalid attributes' do
      let(:invalid_post) { FactoryGirl.attributes_for(:post, title: nil) }

      it 'does not create new posts' do
        # expect { post :create, post: invalid_post }.to_not change(Post, :count)
      end

      it 'renders new post page' do
        # post :create, post: invalid_post
        # expect(response).to render_template(:new)
      end
    end
  end
end
