require_relative './helper'

describe "Users" do

  it "should be able to login" do
    visit "/"
    click_link "Sign up"

    fill_in :email, with: "user@example.com"
    fill_in :password, with: "123456"
    fill_in :password_confirmation, with: "123456"

    click_button "Sign up"

    assert has_content?("Successfully created user account")
  end
end
