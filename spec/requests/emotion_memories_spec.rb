require 'rails_helper'
# TODO:Finish setting up tests to use randomized faker bot data instead of seed data.
# Need to create the associated emotion, thought etc. data and link them to the emotions.
# Also need to make sure tests account for serializer etc.

RSpec.describe 'EmotionsMemory API', type: :request do
  # initialize test data 
#   let!(:emotions) { create_list(:emotion, 10) }
  let(:emotion_memory_id) { EmotionMemory.first.id }

  # Test suite for GET /emotion_memories
  describe 'GET /emotion_memories' do
    # make HTTP get request before each example
    before { get '/emotion_memories' }

    it 'returns emotion_memories' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /emotion_memories/:id
  describe 'GET /emotion_memories/:id' do
    before { get "/emotion_memories/#{emotion_memory_id}" }

    context 'when the record exists' do
      it 'returns the emotion' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(emotion_memory_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:emotion_memory_id) { 10000 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match("Couldn't find EmotionMemory")
      end
    end
  end

  # 
#   TODO:Do I need to come back to this and create the tables through emotions?
# Test suite for POST /emotion_memories
#   describe 'POST /emotion_memories' do
#     # valid payload
#     let(:valid_attributes) { { title: 'Learn Elm', created_by: '1' } }

#     context 'when the request is valid' do
#       before { post '/emotion_memories', params: valid_attributes }

#       it 'creates a emotion' do
#         expect(json['title']).to eq('Learn Elm')
#       end

#       it 'returns status code 201' do
#         expect(response).to have_http_status(201)
#       end
#     end

#     context 'when the request is invalid' do
#       before { post '/emotion_memories', params: { title: 'Foobar' } }

#       it 'returns status code 422' do
#         expect(response).to have_http_status(422)
#       end

#       it 'returns a validation failure message' do
#         expect(response.body)
#           .to match(/Validation failed: Created by can't be blank/)
#       end
#     end
#   end

#   # Test suite for PUT /emotion_memories/:id
#   describe 'PUT /emotion_memories/:id' do
#     let(:valid_attributes) { { title: 'Shopping' } }

#     context 'when the record exists' do
#       before { put "/emotion_memories/#{emotion_id}", params: valid_attributes }

#       it 'updates the record' do
#         expect(response.body).to be_empty
#       end

#       it 'returns status code 204' do
#         expect(response).to have_http_status(204)
#       end
#     end
#   end

  # Test suite for DELETE /emotion_memories/:id
  describe 'DELETE /emotion_memories/:id' do
    before { delete "/emotion_memories/#{emotion_memory_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end