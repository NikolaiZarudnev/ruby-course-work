# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Products', type: :request do
  describe 'Request index' do
    subject = 'test'
    it 'assigns product name' do
      product = Product.create(name: 'test')

      expect(subject).to eq(product.name)
    end

    it 'assigns the all products' do
      subject { Product.all }

      expect(subject).to eq('test')
    end
  end
end
