# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


class Seed

  def self.begin
    seed = Seed.new
    seed.generate_articles
  end

  def generate_articles
    20.times do |i|
      article = Article.create!(
        title: Faker::Book.author,
        postid: Faker::IDNumber.brazilian_citizen_number,
        content: Faker::Lorem.paragraph_by_chars(number: 800, supplemental: false),
        date: Faker::Date.between(from: 2.days.ago, to: Date.today),
        topic: Faker::Music.genre
          )
      puts "Article #{i}: Title is #{article.title} and topic is '#{article.topic}'."
    end
  end
end

Seed.begin
