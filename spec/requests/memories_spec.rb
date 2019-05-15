require 'rails_helper'
# TODO:Finish setting up tests to use randomized faker bot data instead of seed data.
# Need to create the associated emotion, thought etc. data and link them to the memories.
# Also need to make sure tests account for serializer etc.

RSpec.describe 'Memories API', type: :request do
  # initialize test data 
#   let!(:memories) { create_list(:memory, 10) }
  let(:memory_id) { Memory.first.id }

  # Test suite for GET /memories
  describe 'GET /memories' do
    # make HTTP get request before each example
    before { get '/memories' }

    it 'returns memories' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /memories/:id
  describe 'GET /memories/:id' do
    before { get "/memories/#{memory_id}" }

    context 'when the record exists' do
      it 'returns the memory' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(memory_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:memory_id) { 10000 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match("Couldn't find Memory")
      end
    end
  end

  # 
#   TODO:Do I need to come back to this and create the tables through memories?
# Test suite for POST /memories
#   describe 'POST /memories' do
#     # valid payload
#     let(:valid_attributes) { { title: 'Learn Elm', created_by: '1' } }

#     context 'when the request is valid' do
#       before { post '/memories', params: valid_attributes }

#       it 'creates a memory' do
#         expect(json['title']).to eq('Learn Elm')
#       end

#       it 'returns status code 201' do
#         expect(response).to have_http_status(201)
#       end
#     end

#     context 'when the request is invalid' do
#       before { post '/memories', params: { title: 'Foobar' } }

#       it 'returns status code 422' do
#         expect(response).to have_http_status(422)
#       end

#       it 'returns a validation failure message' do
#         expect(response.body)
#           .to match(/Validation failed: Created by can't be blank/)
#       end
#     end
#   end

#   # Test suite for PUT /memories/:id
#   describe 'PUT /memories/:id' do
#     let(:valid_attributes) { { title: 'Shopping' } }

#     context 'when the record exists' do
#       before { put "/memories/#{memory_id}", params: valid_attributes }

#       it 'updates the record' do
#         expect(response.body).to be_empty
#       end

#       it 'returns status code 204' do
#         expect(response).to have_http_status(204)
#       end
#     end
#   end

  # Test suite for DELETE /memories/:id
  describe 'DELETE /memories/:id' do
    before { delete "/memories/#{memory_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end