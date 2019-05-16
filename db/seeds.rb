require 'faker'

# Users
User.create(email: 'admin@test.com', username: 'admin', first_name: 'admin', last_name: 'admin', password: 'password')
User.create(email: 'Dave@test.com', username: 'dave', first_name: 'Dave', last_name: 'K', password: 'password')
User.create(email: 'Adam@test.com', username: 'adam', first_name: 'Adam', last_name: 'G', password: 'password')
User.create(email: 'Akram@test.com', username: 'akram', first_name: 'Akram', last_name: 'H', password: 'password')
User.create(email: 'Alonso@test.com', username: 'alonso', first_name: 'Alonso', last_name: 'O', password: 'password')
User.create(email: 'Diana@test.com', username: 'diana', first_name: 'Diana', last_name: 'L', password: 'password')
User.create(email: 'Faizan@test.com', username: 'faizan', first_name: 'Faizan', last_name: 'I', password: 'password')
User.create(email: 'Jessy@test.com', username: 'jessy', first_name: 'Jessy', last_name: 'H', password: 'password')
User.create(email: 'Katetest.com', username: 'kate', first_name: 'Kate', last_name: 'K', password: 'password')
User.create(email: 'Khaled@test.com', username: 'khaled', first_name: 'Khaled', last_name: 'K', password: 'password')
User.create(email: 'Matt@test.com', username: 'matt', first_name: 'Matt', last_name: 'P', password: 'password')
User.create(email: 'Mica@test.com', username: 'mica', first_name: 'Micaela', last_name: 'R', password: 'password')
User.create(email: 'Namoi@test.com', username: 'naomi', first_name: 'Naomi', last_name: 'K', password: 'password')
User.create(email: 'Nate@test.com', username: 'nate', first_name: 'Nate', last_name: 'C', password: 'password')
User.create(email: 'Nicky@test.com', username: 'nicky', first_name: 'Nicky', last_name: 'D', password: 'password')
User.create(email: 'Richie@test.com', username: 'richie', first_name: 'Richard', last_name: 'T', password: 'password')
User.create(email: 'Talin@test.com', username: 'tali', first_name: 'Tali', last_name: 'S', password: 'password')
User.create(email: 'Tony@test.com', username: 'tony', first_name: 'Tony', last_name: 'C', password: 'password')
User.create(email: 'Victoria@test.com', username: 'victoria', first_name: 'Victoria', last_name: 'M', password: 'password')
User.create(email: 'Will@test.com', username: 'will', first_name: 'Will', last_name: 'S', password: 'password')
User.create(email: 'Steven@test.com', username: 'steven', first_name: 'Steven', last_name: 'B', password: 'password')
User.create(email: 'Vicky@test.com', username: 'vicky', first_name: 'Vicky', last_name: 'H', password: 'password')
User.create(email: 'Ian@test.com', username: 'ian', first_name: 'Ian', last_name: 'H', password: 'password')
User.create(email: 'Ryan@test.com', username: 'ryan', first_name: 'Ryan', last_name: 'R', password: 'password')

# Emotions
# For feelings... will organize by intensity wheel but assign valence and activation based on affect circumplex
# Pull activation from charts
# Pull valence from charts
primary_emotions = ['joy', 'trust', 'fear', 'surprise', 'sadness', 'disgust', 'anger', 'anticipation']
strong_emotions = ['ecstasy', 'admiration', 'terror', 'amazement', 'grief', 'loathing', 'rage', 'vigilance'] 
mild_emotions = ['serenity', 'acceptance', 'apprehension', 'distraction', 'pensiveness', 'bordeom', 'annoyance', 'interest'] 
combinatory_emotions = ['love', 'submission', 'awe', 'disapproval', 'remorse', 'contempt', 'aggressiveness', 'optimism']
emotions = primary_emotions + strong_emotions + mild_emotions + combinatory_emotions


#Thoughts
@time_orientation = ['Future', 'Past', 'Present']
@thought_type = ['Insightful', 'Experiential', 'Automatic']
# There may be no need for thought as stand alone... though_category = []?

# # Activities
# activity_category = ['Entertainment','Work', 'Physical', 'Other']
# work_activities = ['Develop', 'Plan', 'Meeting', 'Design', 'Test', 'QA', 'Research']
# entertainment_activities = ['Clean', 'Cook', 'Shop', 'Eat', 'Drink', 'Play music', 'Listen to music', 'Read', 'Meditate']
# physical_activities = ['Lift weights', 'Walk', 'Run', 'Yoga', 'Swim', 'Dance', 'Sport - other', 'Other']
# # other_activities = []
# all_activities = work_activities + personal_activities + physical_activities

emotions.each {|emotion| Emotion.create(emotion: emotion)}
User.all.each do |user|
    20.times do 
        Memory.create(user_id: user.id, stress_level: Faker::Number.between(0, 10), anxiety_level: Faker::Number.between(0, 10), default_stress_level_value: false, default_anxiety_level_value: false)
        EmotionMemory.create(emotion_id: Faker::Number.between(1, Emotion.all.length-1), memory_id: Memory.last.id, intensity: Faker::Number.between(0, 10), pleasure: Faker::Number.between(0, 10), default_intensity_value: false, default_pleasure_value: false)
        ThoughtMemory.create(memory_id: Memory.last.id, thought_content: Faker::Lorem.sentence(3, false, 4), thought_type: @thought_type.sample, time_orientation: @time_orientation.sample, thought_object: User.all.sample.first_name, reason: Faker::Lorem.word, automatic_thought: Faker::Lorem.sentence(3, false, 4), rational_thought: Faker::Lorem.sentence(3, false, 4))
    end
end





