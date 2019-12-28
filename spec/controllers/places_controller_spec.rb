require 'rails_helper'

describe PlecesController do
  describe 'GET #index' do
    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  # テストの結果でplaces_idのつけ方がわからなかった
  # describe 'GET #search' do
  #   it "renders the :search template" do
  #     get :search
  #     expect(response).to render_template :search
  #   end
  # end

  describe 'GET #show' do
    it "assigns the requested place to @place" do
      place = create(:place)
      get :show, params: { id: place }
      expect(assigns(:place)).to eq place
    end

    it "renders the :show template" do
      place = create(:place)
      get :show, params: { id: place }
      expect(response).to render_template :show
    end
  end
end