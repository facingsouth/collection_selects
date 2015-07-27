# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



10.times do
  u = User.new
  u.name = Faker::Internet.user_name
  u.save
  rand(2..5).times do
    u.posts.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph(10))
  end
end

tags_array = Faker::Lorem.words(4)

tags_array.each do |el|
  Tag.create(name: el)
  p el
end

Post.all.each do |p|
  tag_holder = Tag.all.sample(rand(1..4))
  tag_holder.each do |t|
    p.tags << t
  end
  rand(0..5).times do 
    p.comments.create(body: Faker::Lorem.sentence, user_id: rand(1..10))
  end 
end

