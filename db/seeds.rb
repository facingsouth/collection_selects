# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



100.times do
  p = Post.new
  p.title = Faker::Lorem.sentence
  p.body = Faker::Lorem.paragraph(10)
  p.save
end


10.times do
  u = User.new
  u.name = Faker::Internet.user_name
  u.save
end
