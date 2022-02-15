require 'rails_helper'

describe 'the log in process', type: :feature do
  before do
    User.create(email: 'user1@gmail.com', password: 'password', name: 'User1')
  end

  it 'log @user in' do
    visit '/session/new'
    fill_in 'Email', with: 'user1@gmail.com'
    fill_in 'Password', with: 'password'
    click_button 'Save'
    expect(page).to have_current_path(root_path, ignore_query: true)
    expect(page).to have_text('WELCOME, User1')
  end
end
