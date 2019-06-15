class Api::V1::MemorySerializer < ActiveModel::Serializer
  attributes :id, :user, :activityMemories, :thoughtMemories, :emotionMemories , :createdAt, :timeOfMemory
  
    def user
      {userId: self.object.user.id,
      firstName: self.object.user.first_name,
      lastName: self.object.user.last_name}
    end

    def thoughtMemories
      self.object.thought_memories.map do |thought_memory|
        {id: thought_memory.id,
        memoryId: thought_memory.memory_id,
        createdAt: thought_memory.created_at,
        thoughtContent: thought_memory.thought_content,
        thoughtType: thought_memory.thought_type,
        automaticThought: thought_memory.automatic_thought,
        cognitiveBias: thought_memory.cognitive_bias,
        rationalThought: thought_memory.rational_thought,
        timeOrientation: thought_memory.time_orientation,
        topic: thought_memory.topic}
      end
    end

    def emotionMemories
      self.object.emotion_memories.map do |emotion_memory|
        {id: emotion_memory.id,
        memoryId: emotion_memory.memory_id,
        createdAt: emotion_memory.created_at,
        emotion: emotion_memory.emotion.emotion,
        intensity: emotion_memory.intensity,
        pleasure: emotion_memory.pleasure,
        stressLevel: emotion_memory.stress_level,
        anxietyLevel: emotion_memory.anxiety_level}
      end
    end

    def activityMemories
      self.object.activity_memories.map do |activity_memory|
        {id: activity_memory.id,
        memoryId: activity_memory.memory_id,
        createdAt: activity_memory.created_at,
        activityType: activity_memory.activity_type,
        activityName: activity_memory.activity_name,
        activityDescription: activity_memory.activity_description,
        activityStatus: activity_memory.activity_status,
        activityStartTime: activity_memory.activity_start_time,
        activityEndTime: activity_memory.activity_end_time,
      }
      end
    end

    def createdAt
      object.created_at
    end

    def timeOfMemory
      object.time_of_memory
    end
end
