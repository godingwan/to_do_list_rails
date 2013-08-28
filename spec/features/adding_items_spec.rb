require 'spec_helper'

feature 'adding items to a list', %q{
  As a user
  I want to be able to add an item to my to do list
  So that I can keep track of them
  } do

  context 'not signed in' do
    scenario 'must be signed in' do
      visit new_item_path

      expect(page).to have_content("You need to sign in or sign up before continuing")
    end
  end
end
