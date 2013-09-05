require 'spec_helper'

feature 'adding items to a list', %q{
  As a user
  I want to be able to add an item to my to do list
  So that I can keep track of them
  } do

  context 'not signed in' do
    scenario 'must be signed in' do
      visit root_path

      expect(page).to have_content("You need to sign in or sign up before continuing")
    end
  end

  context 'on own list' do
    scenario 'item appears after creation' do
      user = FactoryGirl.create(:user)

      sign_in_as(user)
      click_link "Add an item"
      fill_in "Item", :with => "item1"
      click_button "Add to list"

      expect(page).to have_content("item1")
    end
  end
end
