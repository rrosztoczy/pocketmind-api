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

# Emotions
feeling = Faker::Number.number(10)
mood = Faker::Number.number(10)

# Thoughts

# TODO: Can see place for social now... social activities!

# Activities
activity_category = ['Personal','Work', 'Learn', 'Teach', 'Hobby', 'Other']
work_activities = ['Develop', 'Plan', 'Meeting', 'Design', 'Test', 'QA', 'Research']
personal_activities = ['Clean', 'Cook', 'Shop', 'Eat', 'Drink', 'Play music', 'Listen to music', 'Read', 'Meditate']
all_activities = work_activities + personal_activities

# Physicals
stress_level = Faker::Number.number(10)
physical_activities = ['Lift weights', 'Walk', 'Run', 'Yoga', 'Swim', 'Dance', 'Sport - other', 'Other']

#Thoughts
thought_categories = ['Worry', 'Gratitude', 'Memory', 'Future', 'Hope']
# TODO: Comment out the create test ryan line after the first seed, see once 
# TODO: Start to collect real data asap and use that
User.create(email: 'Ryan@test.com', username: 'ryan', first_name: 'Ryan', last_name: 'R', password: 'password')
# Memories
Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: true)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: true)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: true)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: true)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: true)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: true)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: true)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: false)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: true)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: true)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: true)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: true)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: false)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: false)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: true)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: false)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: true)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: true)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: true)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)

Emotion.create(feeling: Faker::Number.between(from = 1.00, to = 10.00).to_i, mood: Faker::Number.between(from = 1.00, to = 10.00).to_i)
Thought.create(category: thought_categories.sample, thought: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0))
Activity.create(activity_category: activity_category.sample, activity_name: all_activities.sample, progress: true)
Physical.create(stress_level: Faker::Number.between(from = 1.00, to = 10.00).to_i, physical_activity: physical_activities.sample)
Memory.create(user_id: User.all.sample.id, emotion_id: Emotion.last.id, thought_id: Thought.last.id, physical_id: Physical.last.id, activity_id: Activity.last.id)
