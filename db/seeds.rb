# Clear existing data
Answer.destroy_all
Question.destroy_all
Category.destroy_all

# Create categories
bible_basics = Category.create!(name: "Bible Basics")
old_testament = Category.create!(name: "Old Testament")
new_testament = Category.create!(name: "New Testament")

# Create questions and answers
questions_data = [
  {
    category: bible_basics,
    content: "How many books are in the Bible?",
    answers_attributes: [
      { content: "66", correct: true },
      { content: "39", correct: false },
      { content: "27", correct: false },
      { content: "73", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the first man created according to the Bible?",
    answers_attributes: [
      { content: "Adam", correct: true },
      { content: "Noah", correct: false },
      { content: "Abraham", correct: false },
      { content: "Moses", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Who wrote most of the books in the New Testament?",
    answers_attributes: [
      { content: "Paul", correct: true },
      { content: "Peter", correct: false },
      { content: "John", correct: false },
      { content: "Luke", correct: false }
    ]
  }
]

questions_data.each do |question_data|
  Question.create!(question_data)
end

puts "Seed data created successfully!"
puts "Created #{Category.count} categories"
puts "Created #{Question.count} questions"
puts "Created #{Answer.count} answers"