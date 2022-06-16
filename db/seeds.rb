# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

10.times do
    User.create(full_name: Faker::Name.name)
end

User.all.each do |user|
    5.times do
        Post.create(user: user, content: Faker::Lorem.paragraphs)
    end
end

Post.all.each do |post|
    Comment.create(user: User.all.sample,post: post, content: Faker::Lorem.sentence)
end