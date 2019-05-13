require 'rails_helper'
# TODO:Finish setting up tests to use randomized faker bot data instead of seed data.
# Need to create the associated emotion, thought etc. data and link them to the activities.
# Also need to make sure tests account for serializer etc.

RSpec.describe 'Activities API', type: :request do
  # initialize test data 
#   let!(:activities) { create_list(:activity, 10) }
  let(:activity_id) { Activity.first.id }

  # Test suite for GET /activities
  describe 'GET /activities' do
    # make HTTP get request before each example
    before { get '/activities' }

    it 'returns activities' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /activities/:id
  describe 'GET /activities/:id' do
    before { get "/activities/#{activity_id}" }

    context 'when the record exists' do
      it 'returns the activity' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(activity_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:activity_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match("Couldn't find Activity")
      end
    end
  end

  # 
#   TODO:Do I need to come back to this and create the tables through activities?
# Test suite for POST /activities
#   describe 'POST /activities' do
#     # valid payload
#     let(:valid_attributes) { { title: 'Learn Elm', created_by: '1' } }

#     context 'when the request is valid' do
#       before { post '/activities', params: valid_attributes }

#       it 'creates a activity' do
#         expect(json['title']).to eq('Learn Elm')
#       end

#       it 'returns status code 201' do
#         expect(response).to have_http_status(201)
#       end
#     end

#     context 'when the request is invalid' do
#       before { post '/activities', params: { title: 'Foobar' } }

#       it 'returns status code 422' do
#         expect(response).to have_http_status(422)
#       end

#       it 'returns a validation failure message' do
#         expect(response.body)
#           .to match(/Validation failed: Created by can't be blank/)
#       end
#     end
#   end

#   # Test suite for PUT /activities/:id
#   describe 'PUT /activities/:id' do
#     let(:valid_attributes) { { title: 'Shopping' } }

#     context 'when the record exists' do
#       before { put "/activities/#{activity_id}", params: valid_attributes }

#       it 'updates the record' do
#         expect(response.body).to be_empty
#       end

#       it 'returns status code 204' do
#         expect(response).to have_http_status(204)
#       end
#     end
#   end

  # Test suite for DELETE /activities/:id
  describe 'DELETE /activities/:id' do
    before { delete "/activities/#{activity_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end