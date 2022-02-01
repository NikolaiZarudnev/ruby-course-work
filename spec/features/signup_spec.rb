# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'
describe 'the sign up process', type: :feature do
  it 'go to page current user' do
    visit '/users/new'
    fill_in 'Email', with: 'user1@gmail.com'
    fill_in 'Name', with: 'User1'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Create User'
    expect(page).to have_current_path("/users/#{User.last.id}", ignore_query: true)
  end

  it 'have standart text' do
    visit '/users/new'
    fill_in 'Email', with: 'user1@gmail.com'
    fill_in 'Name', with: 'User1'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Create User'
    expect(page).to have_text('LOG OUT Records')
  end
end
