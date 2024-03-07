require 'rails_helper'

RSpec.describe "Logging Out" do
  it "can log out" do
    user = User.create(username: "funbucket13", password: "test")
    
    visit root_path
    
    click_on "I already have an account"

    expect(current_path).to eq(new_session_path)

    fill_in :username, with: user.username
    fill_in :password, with: user.password

    click_on "Log In"

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Welcome, #{user.username}")

    click_button "Log Out"

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Logged out successfully")
  end
end