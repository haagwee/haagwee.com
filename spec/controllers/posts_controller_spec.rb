require "rails_helper"

RSpec.describe PostsController, type: :controller do
  describe 'GET #index' do
    before { get :index }

    it { should render_template('index') }
  end
end
