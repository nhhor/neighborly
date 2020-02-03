# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Review.destroy_all

15.times do |index|
  users = []
  users.push(User.create!(user_email: Faker::Internet.free_email,user_name_first: Faker::GreekPhilosophers.name, user_name_last: Faker::GreekPhilosophers.name, user_zip: Faker::Number.between(from: 97201, to: 97299), password: 'password',password_confirmation: 'password'))
  users
  rand(2..5).times do |review|
    users.each do |user|
      Review.create! user_id: user.id,
      reviewer_id: Faker::Number.between(from: 1, to: 100),
      user_comments: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true),
      user_like: Faker::Boolean.boolean(true_ratio: 0.2)
      # Event.create!
    end
  end
end
puts "Review #{i}: Reviewer id is #{review.reviewer_id} User id is '#{review.user_id}'
User liked: '#{review.user_like}' Review content is '#{review.user_comments}'."
