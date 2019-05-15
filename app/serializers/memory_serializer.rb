class MemorySerializer < ActiveModel::Serializer
  attributes :id, :user, :thought_memories, :emotion_memories , :stress_level, :anxiety_level, :created_at, :time_of_memory
    def user
      {user_id: self.object.user.id,
      first_name: self.object.user.first_name,
      last_name: self.object.user.last_name}
    end

    def thought_memories
      
    end

    def emotion_memories
    end
end
