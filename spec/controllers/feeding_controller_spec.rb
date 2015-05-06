require 'rails_helper'

RSpec.describe FeedingController, type: :controller do

  describe "GET #mayhem" do
    it "returns http success" do
      get :mayhem
      expect(response).to have_http_status(:success)
    end
  end

end
