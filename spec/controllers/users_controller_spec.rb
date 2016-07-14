require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "save data" do
      @user = User.new({name:"honest",address:"raj"})
      expect(@user.save) == true
    end
    it "Empty Params" do
      @user = User.new()
      expect(@user.save) == ""
    end
  end

  # describe "receive :save" do
  #   it "receive save data" do
  #     post :create ,"users",{name:"honest",address:"raj",id:2}
  #     expect(@user.save).to eq true
  #   end
  # end

  # describe "PUT #update" do
  #   it "returns http success" do
  #     put :update
  #     expect(response).to have_http_status(:success)
  #   end
  # end



  # describe "GET #show" do
  #   it "returns http success" do
  #     get :show
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #update" do
  #   it "returns http success" do
  #     get :update
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
