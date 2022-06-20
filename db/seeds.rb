# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user_1 = Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/photos/1.jpeg')))
User.create(full_name: 'Rebeca J. Stuart', photo: user_1)

user_2 = Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/photos/2.png')))
User.create(full_name: 'Erica C. Flower', photo: user_2)

user_3 = Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/photos/3.png')))
User.create(full_name: 'Jhon Mayers', photo: user_3)

user_4 = Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/photos/4.png')))
User.create(full_name: 'Mike Mellon', photo: user_4)

user_5 = Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/photos/5.jpg')))
User.create(full_name: 'Fabio Martins', photo: user_5)

# 10.times do
#     User.create(full_name: Faker::Name.name)
# end

# User.all.each do |user|
#     5.times do
#         Post.create(user: user, content: Faker::Lorem.paragraph(sentence_count: 10))
#     end
# end

# Post.all.each do |post|
#     Comment.create(user: User.all.sample,post: post, content: Faker::Lorem.sentence)
# end