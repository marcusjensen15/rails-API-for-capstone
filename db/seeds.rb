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
