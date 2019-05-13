require 'rails_helper'
# TODO:Finish setting up tests to use randomized faker bot data instead of seed data.
# Need to create the associated emotion, thought etc. data and link them to the physicals.
# Also need to make sure tests account for serializer etc.

RSpec.describe 'Physicals API', type: :request do
  # initialize test data 
#   let!(:physicals) { create_list(:physical, 10) }
  let(:physical_id) { Physical.first.id }

  # Test suite for GET /physicals
  describe 'GET /physicals' do
    # make HTTP get request before each example
    before { get '/physicals' }

    it 'returns physicals' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /physicals/:id
  describe 'GET /physicals/:id' do
    before { get "/physicals/#{physical_id}" }

    context 'when the record exists' do
      it 'returns the physical' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(physical_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:physical_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match("Couldn't find Physical")
      end
    end
  end

  # 
#   TODO:Do I need to come back to this and create the tables through physicals?
# Test suite for POST /physicals
#   describe 'POST /physicals' do
#     # valid payload
#     let(:valid_attributes) { { title: 'Learn Elm', created_by: '1' } }

#     context 'when the request is valid' do
#       before { post '/physicals', params: valid_attributes }

#       it 'creates a physical' do
#         expect(json['title']).to eq('Learn Elm')
#       end

#       it 'returns status code 201' do
#         expect(response).to have_http_status(201)
#       end
#     end

#     context 'when the request is invalid' do
#       before { post '/physicals', params: { title: 'Foobar' } }

#       it 'returns status code 422' do
#         expect(response).to have_http_status(422)
#       end

#       it 'returns a validation failure message' do
#         expect(response.body)
#           .to match(/Validation failed: Created by can't be blank/)
#       end
#     end
#   end

#   # Test suite for PUT /physicals/:id
#   describe 'PUT /physicals/:id' do
#     let(:valid_attributes) { { title: 'Shopping' } }

#     context 'when the record exists' do
#       before { put "/physicals/#{physical_id}", params: valid_attributes }

#       it 'updates the record' do
#         expect(response.body).to be_empty
#       end

#       it 'returns status code 204' do
#         expect(response).to have_http_status(204)
#       end
#     end
#   end

  # Test suite for DELETE /physicals/:id
  describe 'DELETE /physicals/:id' do
    before { delete "/physicals/#{physical_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end