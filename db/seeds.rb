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
  },
  {
    category: bible_basics,
    content: "What are the first five books of the Bible collectively called?",
    answers_attributes: [
      { content: "Pentateuch", correct: true },
      { content: "Gospels", correct: false },
      { content: "Prophecies", correct: false },
      { content: "Epistles", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who led the Israelites out of Egypt?",
    answers_attributes: [
      { content: "Moses", correct: true },
      { content: "Abraham", correct: false },
      { content: "David", correct: false },
      { content: "Solomon", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "In which city was Jesus born?",
    answers_attributes: [
      { content: "Bethlehem", correct: true },
      { content: "Nazareth", correct: false },
      { content: "Jerusalem", correct: false },
      { content: "Galilee", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "What is the longest book in the Bible?",
    answers_attributes: [
      { content: "Psalms", correct: true },
      { content: "Genesis", correct: false },
      { content: "Isaiah", correct: false },
      { content: "Revelation", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was known as the wisest man in the Bible?",
    answers_attributes: [
      { content: "Solomon", correct: true },
      { content: "David", correct: false },
      { content: "Daniel", correct: false },
      { content: "Joseph", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "How many disciples did Jesus have?",
    answers_attributes: [
      { content: "12", correct: true },
      { content: "10", correct: false },
      { content: "7", correct: false },
      { content: "15", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "What is the last book of the New Testament?",
    answers_attributes: [
      { content: "Revelation", correct: true },
      { content: "Jude", correct: false },
      { content: "3 John", correct: false },
      { content: "Hebrews", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was swallowed by a great fish?",
    answers_attributes: [
      { content: "Jonah", correct: true },
      { content: "Job", correct: false },
      { content: "Jeremiah", correct: false },
      { content: "Elijah", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Who denied Jesus three times?",
    answers_attributes: [
      { content: "Peter", correct: true },
      { content: "John", correct: false },
      { content: "James", correct: false },
      { content: "Matthew", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "What is the shortest verse in the Bible?",
    answers_attributes: [
      { content: "Jesus wept", correct: true },
      { content: "God is love", correct: false },
      { content: "Rejoice always", correct: false },
      { content: "Pray continually", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who wrote most of the Psalms?",
    answers_attributes: [
      { content: "David", correct: true },
      { content: "Solomon", correct: false },
      { content: "Moses", correct: false },
      { content: "Asaph", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "On what island was John when he wrote Revelation?",
    answers_attributes: [
      { content: "Patmos", correct: true },
      { content: "Cyprus", correct: false },
      { content: "Crete", correct: false },
      { content: "Malta", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "What is the first book of the New Testament?",
    answers_attributes: [
      { content: "Matthew", correct: true },
      { content: "Mark", correct: false },
      { content: "Luke", correct: false },
      { content: "John", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the first king of Israel?",
    answers_attributes: [
      { content: "Saul", correct: true },
      { content: "David", correct: false },
      { content: "Solomon", correct: false },
      { content: "Samuel", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Who was the tax collector that became a disciple of Jesus?",
    answers_attributes: [
      { content: "Matthew", correct: true },
      { content: "Mark", correct: false },
      { content: "Luke", correct: false },
      { content: "John", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "What is the first book of the Old Testament?",
    answers_attributes: [
      { content: "Genesis", correct: true },
      { content: "Exodus", correct: false },
      { content: "Leviticus", correct: false },
      { content: "Numbers", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who built the ark according to God's instructions?",
    answers_attributes: [
      { content: "Noah", correct: true },
      { content: "Moses", correct: false },
      { content: "Abraham", correct: false },
      { content: "Joseph", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Who was the first Christian martyr?",
    answers_attributes: [
      { content: "Stephen", correct: true },
      { content: "James", correct: false },
      { content: "Peter", correct: false },
      { content: "Paul", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "How many days did it take God to create the world according to Genesis?",
    answers_attributes: [
      { content: "6", correct: true },
      { content: "7", correct: false },
      { content: "5", correct: false },
      { content: "8", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who interpreted Pharaoh's dreams in Egypt?",
    answers_attributes: [
      { content: "Joseph", correct: true },
      { content: "Daniel", correct: false },
      { content: "Moses", correct: false },
      { content: "Jacob", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "What was Paul's name before his conversion?",
    answers_attributes: [
      { content: "Saul", correct: true },
      { content: "Simon", correct: false },
      { content: "Stephen", correct: false },
      { content: "Silas", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "What is the 'Golden Rule' taught by Jesus?",
    answers_attributes: [
      { content: "Do to others what you would have them do to you", correct: true },
      { content: "Love your neighbor as yourself", correct: false },
      { content: "Turn the other cheek", correct: false },
      { content: "Judge not, lest you be judged", correct: false }
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