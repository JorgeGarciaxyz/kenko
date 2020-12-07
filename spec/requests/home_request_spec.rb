# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Homes", type: :request do
  let(:user) { create(:user) }

  before do
    sign_in(user)
  end

  describe "GET /index" do
    before do
      get "/"
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end
end
