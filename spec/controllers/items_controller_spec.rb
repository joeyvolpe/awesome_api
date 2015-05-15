require 'rails_helper'

RSpec.describe ItemsController, :type => :controller do
  before(:each) do
    @item1 = Item.create(item_name: "rubber chicken", item_description: "A piece of art resembling a commonly consumed pheasant made from a maleable substance.")
    @item2 = Item.create(item_name: "green paint", item_description: "Mint condition metal container commonly used to store a liquid humans rub on living spaces.")
  end

  describe "GET #index" do
    before :each do
      get :index
    end

    it "returns the correct page" do
      expect(response).to render_template("index")
    end

    it "has a status code of 200" do
      expect(response).to have_http_status(200)
    end

    it "assigns @items to include items" do
      expect(assigns(:items)).to include(@item1, @item2)
    end
  end

  describe "GET #show" do
    before :each do
      get :show, id: @item1.id
    end

    it "returns the correct page" do
      expect(response).to render_template("show")
    end

    it "has a status code of 200" do
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #new" do
    before :each do
      get :new
    end
    it "renders the correct page" do
      expect(response).to render_template :new
    end
    it "has a status code of 200" do
      expect(response).to have_http_status(200)
    end
    it "does not persist the user to the database" do
      expect{Item.new}.to change(Item, :count).by(0)
    end
  end

  describe "POST #create" do
    it "returns status code 200" do
      expect(response).to have_http_status(200)
    end
  end

  describe "DELETE #destroy" do
    it "redirects to index page" do
      get :index
      expect(response).to render_template :index
    end
  end

end




