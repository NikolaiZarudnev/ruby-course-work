require 'rails_helper'

describe 'the search process', type: :feature do
  before :each do
    Product.create(name: 'test')
  end
  it 'search test' do
    visit '/developers'
    fill_in 'Поиск', with: 'test'
    click_button 'Поиск'
    expect(current_path).to eq('/search')
    expect(page).to have_text('Результаты поиска')
  end
end
