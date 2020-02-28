require "rails_helper"

RSpec.describe ProjectsController, type: :controller do
  it { should use_before_action(:set_project) }

  describe 'GET #index' do
    before { get :index }

    it { should render_template('index') }
  end

  describe 'GET #show' do
    before {
      project = FactoryBot.create(:project)
      get :show, params: { id: project.id }
    }

    it { should render_template('show') }
  end
end
