require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  describe 'GET /index' do
    before(:example) { get categories_path }

    it 'is gets redirection code error (moved 302)' do
      expect(response).to have_http_status(302)
    end

    it 'redirects to login page' do
      expect(response.body).to include('/users/sign_in')
    end
  end
end
