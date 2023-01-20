# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'MyFavorites', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/my_favorites/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/my_favorites/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/my_favorites/create'
      expect(response).to have_http_status(:success)
    end
  end
end
