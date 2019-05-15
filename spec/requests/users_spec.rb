require 'rails_helper'
# TODO:Finish setting up tests to use randomized faker bot data instead of seed data.
# Need to create the associated emotion, thought etc. data and link them to the users.
# Also need to make sure tests account for serializer etc.

RSpec.describe 'Users API', type: :request do
  # initialize test data 
#   let!(:users) { create_list(:user, 10) }
  let(:user_id) { User.all.sample.id }

#   # Test suite for GET /api/v1/users
#   describe 'GET /api/v1/users' do
#     # make HTTP get request before each example
#     before { get '/api/v1/users' }

#     it 'returns users' do
#       # Note `json` is a custom helper to parse JSON responses
#       expect(json).not_to be_empty
#     end

#     it 'returns status code 200' do
#       expect(response).to have_http_status(200)
#     end
#   end

  # Test suite for GET /api/v1/users/:id
  describe 'GET /api/v1/users/:id' do
    before { get "/api/v1/users/#{user_id}" }

    context 'when the record exists' do
      it 'returns the user' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(user_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:user_id) { 1000 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to include("Couldn't find User")
      end
    end
  end

  # 
#   TODO:Do I need to come back to this and create the tables through users?
# Test suite for POST /api/v1/users
#   describe 'POST /api/v1/users' do
#     # valid payload
#     let(:valid_attributes) { { title: 'Learn Elm', created_by: '1' } }

#     context 'when the request is valid' do
#       before { post '/api/v1/users', params: valid_attributes }

#       it 'creates a user' do
#         expect(json['title']).to eq('Learn Elm')
#       end

#       it 'returns status code 201' do
#         expect(response).to have_http_status(201)
#       end
#     end

#     context 'when the request is invalid' do
#       before { post '/api/v1/users', params: { title: 'Foobar' } }

#       it 'returns status code 422' do
#         expect(response).to have_http_status(422)
#       end

#       it 'returns a validation failure message' do
#         expect(response.body)
#           .to match(/Validation failed: Created by can't be blank/)
#       end
#     end
#   end

#   # Test suite for PUT /api/v1/users/:id
#   describe 'PUT /api/v1/users/:id' do
#     let(:valid_attributes) { { title: 'Shopping' } }

#     context 'when the record exists' do
#       before { put "/api/v1/users/#{user_id}", params: valid_attributes }

#       it 'updates the record' do
#         expect(response.body).to be_empty
#       end

#       it 'returns status code 204' do
#         expect(response).to have_http_status(204)
#       end
#     end
#   end

  # Test suite for DELETE /api/v1/users/:id
  describe 'DELETE /api/v1/users/:id' do
    before { delete "/api/v1/users/#{user_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end