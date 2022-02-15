# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'
describe '#Developer', type: :feature do
  before do
    @developer = Developer.create(id: 1, title: 'valve', description: 'desc test', image: 'none.jpg')
    @developer.products.create(id: 1, title: 'dota', description: 'test', price: 10.0, image: 'none.jpg')
  end

  context 'When created developer' do
    it 'Go to page' do
      click_button 'Edit'
      expect(page).to have_current_path('/developers/1/edit')
    end

    it 'Have text' do
      visit '/developers/1/edit'
      click_button 'Update Developer'
      expect(page).to have_text('Название: valve')
    end

    it 'Have alert text' do
      visit '/developers/1/products/1'
      click_button 'Edit'
      expect(page).to have_text('Редактировать')
    end
  end
end
