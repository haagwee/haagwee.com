require "rails_helper"

RSpec.describe PostsController, type: :controller do
  it { should use_before_action(:set_post) }

  describe 'GET #index' do
    before { get :index }

    it { should render_template('index') }
  end

  describe 'GET #show' do
    before {
      post = FactoryBot.create(:post)
      get :show, params: { id: post.id }
    }

    it { should render_template('show') }
  end
end
