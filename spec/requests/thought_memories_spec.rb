require 'rails_helper'
# TODO:Finish setting up tests to use randomized faker bot data instead of seed data.
# Need to create the associated emotion, thought etc. data and link them to the thoughts.
# Also need to make sure tests account for serializer etc.

RSpec.describe 'ThoughtMemory API', type: :request do
  # initialize test data 
#   let!(:thoughts) { create_list(:thought, 10) }
  let(:thought_memory_id) { ThoughtMemory.first.id }

  # Test suite for GET /thought_memories
  describe 'GET /thought_memories' do
    # make HTTP get request before each example
    before { get '/thought_memories' }

    it 'returns thought_memories' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /thought_memories/:id
  describe 'GET /thought_memories/:id' do
    before { get "/thought_memories/#{thought_memory_id}" }

    context 'when the record exists' do
      it 'returns the thought' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(thought_memory_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:thought_memory_id) { 10000 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to include("Couldn't find ThoughtMemory")
      end
    end
  end

  # 
#   TODO:Do I need to come back to this and create the tables through thoughts?
# Test suite for POST /thought_memories
#   describe 'POST /thought_memories' do
#     # valid payload
#     let(:valid_attributes) { { title: 'Learn Elm', created_by: '1' } }

#     context 'when the request is valid' do
#       before { post '/thought_memories', params: valid_attributes }

#       it 'creates a thought' do
#         expect(json['title']).to eq('Learn Elm')
#       end

#       it 'returns status code 201' do
#         expect(response).to have_http_status(201)
#       end
#     end

#     context 'when the request is invalid' do
#       before { post '/thought_memories', params: { title: 'Foobar' } }

#       it 'returns status code 422' do
#         expect(response).to have_http_status(422)
#       end

#       it 'returns a validation failure message' do
#         expect(response.body)
#           .to match(/Validation failed: Created by can't be blank/)
#       end
#     end
#   end

#   # Test suite for PUT /thought_memories/:id
#   describe 'PUT /thought_memories/:id' do
#     let(:valid_attributes) { { title: 'Shopping' } }

#     context 'when the record exists' do
#       before { put "/thought_memories/#{thought_id}", params: valid_attributes }

#       it 'updates the record' do
#         expect(response.body).to be_empty
#       end

#       it 'returns status code 204' do
#         expect(response).to have_http_status(204)
#       end
#     end
#   end

  # Test suite for DELETE /thought_memories/:id
  describe 'DELETE /thought_memories/:id' do
    before { delete "/thought_memories/#{thought_memory_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end