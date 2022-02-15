require 'rails_helper'

describe 'the search process', type: :feature do
  before do
    Product.create(name: 'test')
  end

  it 'search test' do
    visit '/developers'
    fill_in 'Поиск', with: 'test'
    click_button 'Поиск'
    expect(page).to have_current_path('/search')
    expect(page).to have_text('Результаты поиска')
  end
end
