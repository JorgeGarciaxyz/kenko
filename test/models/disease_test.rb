# frozen_string_literal: true

require "test_helper"

class DiseaseTest < ActiveSupport::TestCase
  context "associations" do
    should belong_to(:user)
  end

  context "validations" do
    should validate_presence_of(:name)
    should validate_presence_of(:user)
  end
end
