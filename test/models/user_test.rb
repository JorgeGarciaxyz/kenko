# frozen_string_literal: true

require "test_helper"

class UserTest < ActiveSupport::TestCase
  context "associations" do
    should have_many(:diseases).dependent(:destroy)
  end
end
