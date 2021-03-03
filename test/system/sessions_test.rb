require "application_system_test_case"

class SessionsTest < ApplicationSystemTestCase
  test "login in" do
    visit new_user_session_url

    assert_selector "h2", text: "Log in"

    user = users(:base)

    fill_in "Email", with: user.email
    fill_in "Password", with: "password123"
    click_on "Log in"

    assert_current_path root_path
  end
end
