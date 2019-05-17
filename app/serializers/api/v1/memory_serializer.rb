class Api::V1::MemorySerializer < ActiveModel::Serializer
  attributes :id, :user, :thoughtMemories, :emotionMemories , :stressLevel, :anxietyLevel, :createdAt, :timeOfMemory
    # belongs_to :user
    # has_many :emotion_memories
    # has_many :thought_memories
  
    def user
      {userId: self.object.user.id,
      firstName: self.object.user.first_name,
      lastName: self.object.user.last_name}
    end

    def thoughtMemories
      self.object.thought_memories.map do |thought_memory|
        {thoughtContent: thought_memory.thought_content,
        thoughtObject: thought_memory.thought_object,
        reason: thought_memory.reason}
      end
    end

    def emotionMemories
      self.object.emotion_memories.map do |emotion_memory|
        {emotion: emotion_memory.emotion.emotion,
        intensity: emotion_memory.intensity,
        pleasure: emotion_memory.pleasure}
      end
    end

    def stressLevel
      object.stress_level
    end

    def anxietyLevel 
      object.anxiety_level
    end

    def createdAt
      object.created_at
    end

    def timeOfMemory
      object.time_of_memory
    end
end