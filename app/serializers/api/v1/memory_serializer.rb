class Api::V1::MemorySerializer < ActiveModel::Serializer
  attributes :id, :user, :thought_memories, :emotion_memories , :stress_level, :anxiety_level, :created_at, :time_of_memory
    def user
      {userId: self.object.user.id,
      firstName: self.object.user.first_name,
      lastName: self.object.user.last_name}
    end

    def thought_memories
      self.object.thought_memories.map do |thought_memory|
        {thoughtContent: thought_memory.thought_content,
        object: thought_memory.object,
        reason: thought_memory.reason}
      end
    end

    def emotion_memories
      self.object.emotion_memories.map do |emotion_memory|
        {emotion: emotion_memory.emotion.emotion,
        intensity: emotion_memory.intensity,
        pleasure: emotion_memory.pleasure}
      end
    end
end
