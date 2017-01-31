require 'rails_helper'

RSpec.describe ItemController, type: :controller do
  describe "#show" do
    let(:item) {Item.create({size:'s', color:'blue', status:'unsold'})}

    it "renders the :show view" do
      # item = Item.create({size:'s', color:'blue', status:'unsold'})
      get :show, id: item.id
      expect(response).to render_template(:show)
    end

    it "assigns @item" do
      # item = Item.create({size: 's', color: 'blue', status: 'unsold'})
      get :show, id: item.id
      expect(assigns(:item)).to eq(item)
    end
  end
end
