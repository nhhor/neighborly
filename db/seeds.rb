# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Review.destroy_all
# Event.destroy_all

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

      faker_zip_array = ["97002", "97003", "97004", "97005", "97006", "97007", "97008", "97009", "97010", "97013", "97015", "97018", "97019", "97020", "97022", "97024", "97027", "97030", "97032", "97034", "97035", "97036", "97042", "97045", "97051", "97053", "97054", "97055", "97056", "97060", "97062", "97064", "97068", "97070", "97075", "97076", "97077", "97078", "97079", "97080", "97086", "97089", "97106", "97109", "97113", "97115", "97116", "97117", "97119", "97123", "97124", "97125", "97129", "97132", "97133", "97137", "97140", "97201", "97202", "97203", "97204", "97205", "97206", "97207", "97208", "97209", "97210", "97211", "97212", "97213", "97214", "97215", "97216", "97217", "97218", "97219", "97220", "97221", "97222", "97223", "97224", "97225", "97227", "97228", "97229", "97230", "97231", "97232", "97233", "97236", "97238", "97239", "97240", "97242", "97250", "97251", "97252", "97253", "97254", "97256", "97258", "97266", "97267", "97268", "97269", "97280", "97281", "97282", "97283", "97286", "97290", "97291", "97292", "97293", "97294", "97296", "97298", "98601", "98604", "98606", "98607", "98622", "98629", "98642", "98660", "98661", "98662", "98663", "98664", "98665", "98666", "98668", "98671", "98674", "98675", "98682", "98683", "98684", "98685", "98686", "98687"]

      faker_events = ["Party", "Games", "Movie", "Child-Friendly", "Study Group"]

      event_name = ((Faker::Verb.base).titleize + " with " + (Faker::GreekPhilosophers.name))
      Event.create! event_name: event_name,
      event_date: Faker::Date.forward(days: 90),
      event_time: nil,
      event_address: Faker::Address.street_address,
      event_zip: faker_zip_array[rand(141)],
      event_city: Faker::Address.city,
      event_state: Faker::Address.state,
      event_description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true),
      event_age_min: 21,
      event_category: faker_events[rand(4)],
      event_min_seats: 2,
      event_max_seats: 10,
      user_id: user.id
    end
    p "...working"
  end
end
p "worked..."
