# Clear existing data
Answer.destroy_all
Question.destroy_all
Category.destroy_all

# Create categories
bible_basics = Category.create!(name: "Bible Basics")
old_testament = Category.create!(name: "Old Testament")
new_testament = Category.create!(name: "New Testament")
bible_advanced = Category.create!(name: "Bible Advanced")

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
        content: "What are the first five books of the Bible collectively called in Greek?",
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
      },
      {
        category: old_testament,
        content: "Who was the mother of Samuel?",
        answers_attributes: [
          { content: "Hannah", correct: true },
          { content: "Sarah", correct: false },
          { content: "Rachel", correct: false },
          { content: "Leah", correct: false }
        ]
      },
      {
        category: new_testament,
        content: "Which apostle was a physician?",
        answers_attributes: [
          { content: "Luke", correct: true },
          { content: "Matthew", correct: false },
          { content: "John", correct: false },
          { content: "Mark", correct: false }
        ]
      },
      {
        category: bible_advanced,
        content: "What was the name of Moses' sister?",
        answers_attributes: [
          { content: "Miriam", correct: true },
          { content: "Ruth", correct: false },
          { content: "Esther", correct: false },
          { content: "Deborah", correct: false }
        ]
      },
      {
        category: bible_basics,
        content: "Who wrote the book of Acts?",
        answers_attributes: [
          { content: "Luke", correct: true },
          { content: "Paul", correct: false },
          { content: "Peter", correct: false },
          { content: "John", correct: false }
        ]
      },
      {
        category: old_testament,
        content: "What was the name of Abraham's wife?",
        answers_attributes: [
          { content: "Sarah", correct: true },
          { content: "Rachel", correct: false },
          { content: "Rebekah", correct: false },
          { content: "Leah", correct: false }
        ]
      },
      {
        category: new_testament,
        content: "Who was the Roman governor who sentenced Jesus to death?",
        answers_attributes: [
          { content: "Pontius Pilate", correct: true },
          { content: "Herod", correct: false },
          { content: "Caesar Augustus", correct: false },
          { content: "Felix", correct: false }
        ]
      },
      {
        category: bible_advanced,
        content: "What was the name of the place where Jesus was crucified?",
        answers_attributes: [
          { content: "Golgotha", correct: true },
          { content: "Gethsemane", correct: false },
          { content: "Nazareth", correct: false },
          { content: "Bethany", correct: false }
        ]
      },
      {
        category: bible_basics,
        content: "How many plagues did God send on Egypt?",
        answers_attributes: [
          { content: "10", correct: true },
          { content: "7", correct: false },
          { content: "12", correct: false },
          { content: "9", correct: false }
        ]
      },
      {
        category: old_testament,
        content: "Who was thrown into a den of lions?",
        answers_attributes: [
          { content: "Daniel", correct: true },
          { content: "David", correct: false },
          { content: "Elijah", correct: false },
          { content: "Jeremiah", correct: false }
        ]
      },
      {
        category: new_testament,
        content: "What was the name of the disciple who betrayed Jesus?",
        answers_attributes: [
          { content: "Judas Iscariot", correct: true },
          { content: "Thomas", correct: false },
          { content: "Philip", correct: false },
          { content: "Bartholomew", correct: false }
        ]
      },
      {
        category: bible_advanced,
        content: "What was the name of the pool where Jesus healed a paralyzed man?",
        answers_attributes: [
          { content: "Bethesda", correct: true },
          { content: "Siloam", correct: false },
          { content: "Jordan", correct: false },
          { content: "Galilee", correct: false }
        ]
      },
      {
        category: bible_basics,
        content: "Who was the father of John the Baptist?",
        answers_attributes: [
          { content: "Zechariah", correct: true },
          { content: "Joseph", correct: false },
          { content: "Simeon", correct: false },
          { content: "Eli", correct: false }
        ]
      },
      {
        category: old_testament,
        content: "Which prophet was taken up to heaven in a whirlwind?",
        answers_attributes: [
          { content: "Elijah", correct: true },
          { content: "Elisha", correct: false },
          { content: "Isaiah", correct: false },
          { content: "Ezekiel", correct: false }
        ]
      },
      {
        category: new_testament,
        content: "What was the name of the rich man who buried Jesus' body?",
        answers_attributes: [
          { content: "Joseph of Arimathea", correct: true },
          { content: "Nicodemus", correct: false },
          { content: "Zacchaeus", correct: false },
          { content: "Barnabas", correct: false }
        ]
      },
      {
        category: bible_advanced,
        content: "What was the name of the servant girl who recognized Peter in the high priest's courtyard?",
        answers_attributes: [
          { content: "Rhoda", correct: true },
          { content: "Mary", correct: false },
          { content: "Martha", correct: false },
          { content: "Tabitha", correct: false }
        ]
      },
      {
    category: old_testament,
    content: "Who was the strongest man in the Bible?",
    answers_attributes: [
      { content: "Samson", correct: true },
      { content: "David", correct: false },
      { content: "Goliath", correct: false },
      { content: "Saul", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "On which day of the week did Jesus rise from the dead?",
    answers_attributes: [
      { content: "Sunday", correct: true },
      { content: "Saturday", correct: false },
      { content: "Friday", correct: false },
      { content: "Monday", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the demon-possessed man Jesus healed in the region of the Gerasenes?",
    answers_attributes: [
      { content: "Legion", correct: true },
      { content: "Beelzebub", correct: false },
      { content: "Apollyon", correct: false },
      { content: "Mammon", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Who was the mother of Jesus?",
    answers_attributes: [
      { content: "Mary", correct: true },
      { content: "Elizabeth", correct: false },
      { content: "Anna", correct: false },
      { content: "Sarah", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Which prophet was instructed to marry a prostitute?",
    answers_attributes: [
      { content: "Hosea", correct: true },
      { content: "Jeremiah", correct: false },
      { content: "Ezekiel", correct: false },
      { content: "Amos", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Who was the first apostle to be martyred?",
    answers_attributes: [
      { content: "James", correct: true },
      { content: "Peter", correct: false },
      { content: "John", correct: false },
      { content: "Andrew", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the place where Jacob wrestled with God?",
    answers_attributes: [
      { content: "Peniel", correct: true },
      { content: "Bethel", correct: false },
      { content: "Mahanaim", correct: false },
      { content: "Shechem", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "How many days and nights did it rain during the Great Flood?",
    answers_attributes: [
      { content: "40", correct: true },
      { content: "7", correct: false },
      { content: "30", correct: false },
      { content: "100", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the first son of Adam and Eve?",
    answers_attributes: [
      { content: "Cain", correct: true },
      { content: "Abel", correct: false },
      { content: "Seth", correct: false },
      { content: "Enoch", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "What was the profession of Luke?",
    answers_attributes: [
      { content: "Physician", correct: true },
      { content: "Fisherman", correct: false },
      { content: "Tax collector", correct: false },
      { content: "Tentmaker", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the servant who had his ear cut off when Jesus was arrested?",
    answers_attributes: [
      { content: "Malchus", correct: true },
      { content: "Simeon", correct: false },
      { content: "Lazarus", correct: false },
      { content: "Bartholomew", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which animal spoke to Balaam?",
    answers_attributes: [
      { content: "Donkey", correct: true },
      { content: "Snake", correct: false },
      { content: "Lion", correct: false },
      { content: "Camel", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the father of King Solomon?",
    answers_attributes: [
      { content: "David", correct: true },
      { content: "Saul", correct: false },
      { content: "Jesse", correct: false },
      { content: "Samuel", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "In which city did Saul (Paul) have his conversion experience?",
    answers_attributes: [
      { content: "Damascus", correct: true },
      { content: "Jerusalem", correct: false },
      { content: "Antioch", correct: false },
      { content: "Rome", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the place where Jesus turned water into wine?",
    answers_attributes: [
      { content: "Cana", correct: true },
      { content: "Nazareth", correct: false },
      { content: "Capernaum", correct: false },
      { content: "Bethany", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Who was the father of John the Baptist?",
    answers_attributes: [
      { content: "Zechariah", correct: true },
      { content: "Joseph", correct: false },
      { content: "Simeon", correct: false },
      { content: "Eli", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Which prophet saw a vision of a valley of dry bones?",
    answers_attributes: [
      { content: "Ezekiel", correct: true },
      { content: "Isaiah", correct: false },
      { content: "Jeremiah", correct: false },
      { content: "Daniel", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Who was the first Gentile convert to Christianity in Acts?",
    answers_attributes: [
      { content: "Cornelius", correct: true },
      { content: "Lydia", correct: false },
      { content: "Timothy", correct: false },
      { content: "Philemon", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the god of the Philistines that fell before the Ark of the Covenant?",
    answers_attributes: [
      { content: "Dagon", correct: true },
      { content: "Baal", correct: false },
      { content: "Molech", correct: false },
      { content: "Asherah", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "How many days was Jonah in the belly of the great fish?",
    answers_attributes: [
      { content: "3", correct: true },
      { content: "7", correct: false },
      { content: "1", correct: false },
      { content: "40", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the mother of Moses?",
    answers_attributes: [
      { content: "Jochebed", correct: true },
      { content: "Miriam", correct: false },
      { content: "Zipporah", correct: false },
      { content: "Puah", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Which disciple is often referred to as 'Doubting Thomas'?",
    answers_attributes: [
      { content: "Thomas", correct: true },
      { content: "Philip", correct: false },
      { content: "Bartholomew", correct: false },
      { content: "Andrew", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the man who helped Jesus carry his cross?",
    answers_attributes: [
      { content: "Simon of Cyrene", correct: true },
      { content: "Joseph of Arimathea", correct: false },
      { content: "Barabbas", correct: false },
      { content: "Nicodemus", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which book of the Bible is known for its many proverbs?",
    answers_attributes: [
      { content: "Proverbs", correct: true },
      { content: "Psalms", correct: false },
      { content: "Ecclesiastes", correct: false },
      { content: "Song of Solomon", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the commander of King David's army?",
    answers_attributes: [
      { content: "Joab", correct: true },
      { content: "Abner", correct: false },
      { content: "Benaiah", correct: false },
      { content: "Uriah", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Which apostle was known as 'the disciple whom Jesus loved'?",
    answers_attributes: [
      { content: "John", correct: true },
      { content: "Peter", correct: false },
      { content: "James", correct: false },
      { content: "Andrew", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the high priest who questioned Jesus during his trial?",
    answers_attributes: [
      { content: "Caiaphas", correct: true },
      { content: "Annas", correct: false },
      { content: "Ananias", correct: false },
      { content: "Gamaliel", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "What was the name of Abraham's nephew?",
    answers_attributes: [
      { content: "Lot", correct: true },
      { content: "Ishmael", correct: false },
      { content: "Laban", correct: false },
      { content: "Nahor", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who succeeded Moses as the leader of the Israelites?",
    answers_attributes: [
      { content: "Joshua", correct: true },
      { content: "Caleb", correct: false },
      { content: "Aaron", correct: false },
      { content: "Eleazar", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "In which city did Paul write his letter to the Romans?",
    answers_attributes: [
      { content: "Corinth", correct: true },
      { content: "Ephesus", correct: false },
      { content: "Athens", correct: false },
      { content: "Philippi", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the prophetess who judged Israel?",
    answers_attributes: [
      { content: "Deborah", correct: true },
      { content: "Miriam", correct: false },
      { content: "Huldah", correct: false },
      { content: "Anna", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "What is the first commandment?",
    answers_attributes: [
      { content: "You shall have no other gods before me", correct: true },
      { content: "Remember the Sabbath day", correct: false },
      { content: "Honor your father and mother", correct: false },
      { content: "You shall not murder", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the oldest man in the Bible?",
    answers_attributes: [
      { content: "Methuselah", correct: true },
      { content: "Noah", correct: false },
      { content: "Adam", correct: false },
      { content: "Abraham", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "What was Jesus' first miracle?",
    answers_attributes: [
      { content: "Turning water into wine", correct: true },
      { content: "Feeding the 5000", correct: false },
      { content: "Walking on water", correct: false },
      { content: "Raising Lazarus from the dead", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "Who was Melchizedek?",
    answers_attributes: [
      { content: "King of Salem and priest of God Most High", correct: true },
      { content: "One of Noah's sons", correct: false },
      { content: "A judge of Israel", correct: false },
      { content: "King David's chief advisor", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which of the following is not one of the 12 disciples?",
    answers_attributes: [
      { content: "Luke", correct: true },
      { content: "Peter", correct: false },
      { content: "John", correct: false },
      { content: "James", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the first king of the divided kingdom of Israel (northern kingdom)?",
    answers_attributes: [
      { content: "Jeroboam", correct: true },
      { content: "Rehoboam", correct: false },
      { content: "Ahab", correct: false },
      { content: "Omri", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "On which island was Paul shipwrecked on his way to Rome?",
    answers_attributes: [
      { content: "Malta", correct: true },
      { content: "Crete", correct: false },
      { content: "Cyprus", correct: false },
      { content: "Patmos", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the pinnacle of the temple where Satan took Jesus during the temptation?",
    answers_attributes: [
      { content: "The pinnacle", correct: true },
      { content: "The Holy of Holies", correct: false },
      { content: "The altar", correct: false },
      { content: "The courtyard", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which Gospel is written by a doctor?",
    answers_attributes: [
      { content: "Luke", correct: true },
      { content: "Matthew", correct: false },
      { content: "Mark", correct: false },
      { content: "John", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was Ruth's first husband?",
    answers_attributes: [
      { content: "Mahlon", correct: true },
      { content: "Boaz", correct: false },
      { content: "Elimelech", correct: false },
      { content: "Chilion", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "What was the name of the disciple who replaced Judas Iscariot?",
    answers_attributes: [
      { content: "Matthias", correct: true },
      { content: "Barnabas", correct: false },
      { content: "Silas", correct: false },
      { content: "Timothy", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the fertility god of the Canaanites?",
    answers_attributes: [
      { content: "Baal", correct: true },
      { content: "Dagon", correct: false },
      { content: "Molech", correct: false },
      { content: "Asherah", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which of these books is not in the Old Testament?",
    answers_attributes: [
      { content: "Philippians", correct: true },
      { content: "Nehemiah", correct: false },
      { content: "Habakkuk", correct: false },
      { content: "Malachi", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was Moses' successor?",
    answers_attributes: [
      { content: "Joshua", correct: true },
      { content: "Caleb", correct: false },
      { content: "Aaron", correct: false },
      { content: "Eleazar", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "To whom did Jesus say, 'Get behind me, Satan!'?",
    answers_attributes: [
      { content: "Peter", correct: true },
      { content: "Judas", correct: false },
      { content: "Thomas", correct: false },
      { content: "Pharisees", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of David's eldest son who rebelled against him?",
    answers_attributes: [
      { content: "Absalom", correct: true },
      { content: "Amnon", correct: false },
      { content: "Adonijah", correct: false },
      { content: "Solomon", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which of these is not one of the Ten Commandments?",
    answers_attributes: [
      { content: "Love your neighbor as yourself", correct: true },
      { content: "Do not steal", correct: false },
      { content: "Do not bear false witness", correct: false },
      { content: "Honor your father and mother", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the left-handed judge who assassinated King Eglon?",
    answers_attributes: [
      { content: "Ehud", correct: true },
      { content: "Gideon", correct: false },
      { content: "Samson", correct: false },
      { content: "Jephthah", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Which of Paul's letters was written to an individual?",
    answers_attributes: [
      { content: "Philemon", correct: true },
      { content: "Galatians", correct: false },
      { content: "Ephesians", correct: false },
      { content: "Colossians", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the place where Jacob had his dream of a ladder reaching to heaven?",
    answers_attributes: [
      { content: "Bethel", correct: true },
      { content: "Peniel", correct: false },
      { content: "Mahanaim", correct: false },
      { content: "Shechem", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which prophet was taken up to heaven in a chariot of fire?",
    answers_attributes: [
      { content: "Elijah", correct: true },
      { content: "Elisha", correct: false },
      { content: "Isaiah", correct: false },
      { content: "Jeremiah", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the priest of Midian and Moses' father-in-law?",
    answers_attributes: [
      { content: "Jethro", correct: true },
      { content: "Eleazar", correct: false },
      { content: "Eli", correct: false },
      { content: "Melchizedek", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Who was the first apostle to be martyred?",
    answers_attributes: [
      { content: "James", correct: true },
      { content: "Stephen", correct: false },
      { content: "Peter", correct: false },
      { content: "Paul", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the Aramean commander healed of leprosy by Elisha?",
    answers_attributes: [
      { content: "Naaman", correct: true },
      { content: "Ben-Hadad", correct: false },
      { content: "Hazael", correct: false },
      { content: "Rezin", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which book of the Bible is named after a woman?",
    answers_attributes: [
      { content: "Ruth", correct: true },
      { content: "Mary", correct: false },
      { content: "Deborah", correct: false },
      { content: "Esther", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the captain of David's army?",
    answers_attributes: [
      { content: "Joab", correct: true },
      { content: "Abner", correct: false },
      { content: "Benaiah", correct: false },
      { content: "Abishai", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "In which city was Paul born?",
    answers_attributes: [
      { content: "Tarsus", correct: true },
      { content: "Jerusalem", correct: false },
      { content: "Rome", correct: false },
      { content: "Damascus", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the woman who hid the Israelite spies in Jericho?",
    answers_attributes: [
      { content: "Rahab", correct: true },
      { content: "Deborah", correct: false },
      { content: "Jael", correct: false },
      { content: "Abigail", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which of these is not a fruit of the Spirit mentioned in Galatians 5?",
    answers_attributes: [
      { content: "Humility", correct: true },
      { content: "Love", correct: false },
      { content: "Joy", correct: false },
      { content: "Peace", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the mother of Samuel?",
    answers_attributes: [
      { content: "Hannah", correct: true },
      { content: "Sarah", correct: false },
      { content: "Rachel", correct: false },
      { content: "Leah", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Which disciple walked on water with Jesus?",
    answers_attributes: [
      { content: "Peter", correct: true },
      { content: "John", correct: false },
      { content: "James", correct: false },
      { content: "Andrew", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the servant girl who recognized Peter in the high priest's courtyard?",
    answers_attributes: [
      { content: "Rhoda", correct: true },
      { content: "Mary", correct: false },
      { content: "Martha", correct: false },
      { content: "Tabitha", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "How many people were saved on Noah's ark?",
    answers_attributes: [
      { content: "8", correct: true },
      { content: "2", correct: false },
      { content: "10", correct: false },
      { content: "12", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the king of Babylon who conquered Jerusalem?",
    answers_attributes: [
      { content: "Nebuchadnezzar", correct: true },
      { content: "Belshazzar", correct: false },
      { content: "Cyrus", correct: false },
      { content: "Darius", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "What was the profession of Lydia in the book of Acts?",
    answers_attributes: [
      { content: "Seller of purple cloth", correct: true },
      { content: "Tentmaker", correct: false },
      { content: "Fisherman", correct: false },
      { content: "Tax collector", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the bronze serpent Moses made in the wilderness?",
    answers_attributes: [
      { content: "Nehushtan", correct: true },
      { content: "Asherah", correct: false },
      { content: "Baalzebub", correct: false },
      { content: "Dagon", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which of these books is not considered one of the Gospels?",
    answers_attributes: [
      { content: "Acts", correct: true },
      { content: "Matthew", correct: false },
      { content: "Mark", correct: false },
      { content: "Luke", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was Esau's twin brother?",
    answers_attributes: [
      { content: "Jacob", correct: true },
      { content: "Isaac", correct: false },
      { content: "Ishmael", correct: false },
      { content: "Joseph", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Which of these women was not present at Jesus' crucifixion according to John's Gospel?",
    answers_attributes: [
      { content: "Martha", correct: true },
      { content: "Mary Magdalene", correct: false },
      { content: "Mary (Jesus' mother)", correct: false },
      { content: "Mary (wife of Clopas)", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the priest who trained young Samuel?",
    answers_attributes: [
      { content: "Eli", correct: true },
      { content: "Zadok", correct: false },
      { content: "Abiathar", correct: false },
      { content: "Ahimelech", correct: false }
    ]
  },{
    category: bible_basics,
    content: "Which book of the Bible is known for its poetic structure and is often quoted in times of hardship?",
    answers_attributes: [
      { content: "Job", correct: true },
      { content: "Lamentations", correct: false },
      { content: "Ecclesiastes", correct: false },
      { content: "Song of Solomon", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the judge who defeated the Midianites with only 300 men?",
    answers_attributes: [
      { content: "Gideon", correct: true },
      { content: "Samson", correct: false },
      { content: "Barak", correct: false },
      { content: "Jephthah", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Which apostle was known as 'the son of encouragement'?",
    answers_attributes: [
      { content: "Barnabas", correct: true },
      { content: "Timothy", correct: false },
      { content: "Silas", correct: false },
      { content: "Titus", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the pagan god of the Philistines that was half-man, half-fish?",
    answers_attributes: [
      { content: "Dagon", correct: true },
      { content: "Baal", correct: false },
      { content: "Molech", correct: false },
      { content: "Chemosh", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which prophet was instructed by God to marry a prostitute?",
    answers_attributes: [
      { content: "Hosea", correct: true },
      { content: "Jeremiah", correct: false },
      { content: "Ezekiel", correct: false },
      { content: "Amos", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the prophet that confronted King David about his sin with Bathsheba?",
    answers_attributes: [
      { content: "Nathan", correct: true },
      { content: "Samuel", correct: false },
      { content: "Gad", correct: false },
      { content: "Elijah", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "What was the name of the Roman procurator who succeeded Felix and heard Paul's case?",
    answers_attributes: [
      { content: "Festus", correct: true },
      { content: "Gallio", correct: false },
      { content: "Sergius Paulus", correct: false },
      { content: "Agrippa", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the valley where David fought Goliath?",
    answers_attributes: [
      { content: "Elah", correct: true },
      { content: "Jezreel", correct: false },
      { content: "Kidron", correct: false },
      { content: "Rephaim", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which of the following is not one of the 'I am' statements of Jesus in John's Gospel?",
    answers_attributes: [
      { content: "I am the Living Water", correct: true },
      { content: "I am the Bread of Life", correct: false },
      { content: "I am the Good Shepherd", correct: false },
      { content: "I am the True Vine", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the prophet that confronted King Ahab and Queen Jezebel?",
    answers_attributes: [
      { content: "Elijah", correct: true },
      { content: "Elisha", correct: false },
      { content: "Obadiah", correct: false },
      { content: "Micaiah", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Which of Paul's letters is the shortest?",
    answers_attributes: [
      { content: "Philemon", correct: true },
      { content: "Titus", correct: false },
      { content: "2 John", correct: false },
      { content: "3 John", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the Jewish council before which Jesus and later Peter and John were brought?",
    answers_attributes: [
      { content: "Sanhedrin", correct: true },
      { content: "Pharisees", correct: false },
      { content: "Sadducees", correct: false },
      { content: "Essenes", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which of these is not one of the Beatitudes?",
    answers_attributes: [
      { content: "Blessed are the wealthy", correct: true },
      { content: "Blessed are the poor in spirit", correct: false },
      { content: "Blessed are those who mourn", correct: false },
      { content: "Blessed are the meek", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the only female judge mentioned in the book of Judges?",
    answers_attributes: [
      { content: "Deborah", correct: true },
      { content: "Jael", correct: false },
      { content: "Miriam", correct: false },
      { content: "Huldah", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "In which city did Paul have a vision of a man from Macedonia asking for help?",
    answers_attributes: [
      { content: "Troas", correct: true },
      { content: "Philippi", correct: false },
      { content: "Thessalonica", correct: false },
      { content: "Berea", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the servant who accompanied Abraham's servant to find a wife for Isaac?",
    answers_attributes: [
      { content: "The Bible doesn't mention the servant's name", correct: true },
      { content: "Eliezer", correct: false },
      { content: "Ephron", correct: false },
      { content: "Laban", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which of these books is not considered one of the Minor Prophets?",
    answers_attributes: [
      { content: "Isaiah", correct: true },
      { content: "Hosea", correct: false },
      { content: "Amos", correct: false },
      { content: "Micah", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the king of Persia who allowed the Jews to return to Jerusalem and rebuild the temple?",
    answers_attributes: [
      { content: "Cyrus", correct: true },
      { content: "Darius", correct: false },
      { content: "Xerxes", correct: false },
      { content: "Artaxerxes", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Which of the following was not one of the seven churches addressed in Revelation?",
    answers_attributes: [
      { content: "Corinth", correct: true },
      { content: "Ephesus", correct: false },
      { content: "Smyrna", correct: false },
      { content: "Thyatira", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the godly man who helped Jeremiah buy a field as a symbol of hope for Israel's future?",
    answers_attributes: [
      { content: "Baruch", correct: true },
      { content: "Gedaliah", correct: false },
      { content: "Zedekiah", correct: false },
      { content: "Hanamel", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which of these is not one of the plagues God sent on Egypt?",
    answers_attributes: [
      { content: "Earthquake", correct: true },
      { content: "Locusts", correct: false },
      { content: "Darkness", correct: false },
      { content: "Boils", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the only woman whose age at death is recorded in the Bible?",
    answers_attributes: [
      { content: "Sarah", correct: true },
      { content: "Rachel", correct: false },
      { content: "Rebekah", correct: false },
      { content: "Leah", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Which disciple of Jesus was a Zealot?",
    answers_attributes: [
      { content: "Simon", correct: true },
      { content: "Matthew", correct: false },
      { content: "Bartholomew", correct: false },
      { content: "Philip", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the place where Paul was imprisoned in Rome?",
    answers_attributes: [
      { content: "Praetorium", correct: true },
      { content: "Mamertine", correct: false },
      { content: "Palatine", correct: false },
      { content: "Colosseum", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which book of the Bible contains the story of Jonah and the whale?",
    answers_attributes: [
      { content: "Jonah", correct: true },
      { content: "Job", correct: false },
      { content: "Joel", correct: false },
      { content: "Judges", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the father of Methuselah, the longest-living person recorded in the Bible?",
    answers_attributes: [
      { content: "Enoch", correct: true },
      { content: "Noah", correct: false },
      { content: "Lamech", correct: false },
      { content: "Jared", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Which of Paul's companions does he call 'the beloved physician'?",
    answers_attributes: [
      { content: "Luke", correct: true },
      { content: "Mark", correct: false },
      { content: "Timothy", correct: false },
      { content: "Silas", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the mount where Elijah confronted the prophets of Baal?",
    answers_attributes: [
      { content: "Mount Carmel", correct: true },
      { content: "Mount Tabor", correct: false },
      { content: "Mount Hermon", correct: false },
      { content: "Mount Gilboa", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which book of the Bible is named after a Persian queen?",
    answers_attributes: [
      { content: "Esther", correct: true },
      { content: "Ruth", correct: false },
      { content: "Judith", correct: false },
      { content: "Deborah", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the father of Seth?",
    answers_attributes: [
      { content: "Adam", correct: true },
      { content: "Cain", correct: false },
      { content: "Abel", correct: false },
      { content: "Enoch", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "In which city was Timothy living when Paul invited him to join his mission?",
    answers_attributes: [
      { content: "Lystra", correct: true },
      { content: "Derbe", correct: false },
      { content: "Iconium", correct: false },
      { content: "Antioch", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the Hebrew midwife who feared God and did not kill the Israelite babies?",
    answers_attributes: [
      { content: "Shiphrah", correct: true },
      { content: "Puah", correct: false },
      { content: "Jochebed", correct: false },
      { content: "Miriam", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which of these is not one of the traditional authors of the books of Wisdom Literature?",
    answers_attributes: [
      { content: "Isaiah", correct: true },
      { content: "Solomon", correct: false },
      { content: "David", correct: false },
      { content: "Agur", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the son of Nun and servant of Moses?",
    answers_attributes: [
      { content: "Joshua", correct: true },
      { content: "Caleb", correct: false },
      { content: "Gershom", correct: false },
      { content: "Eleazar", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Which of Paul's letters addresses the issue of slaves and masters?",
    answers_attributes: [
      { content: "Philemon", correct: true },
      { content: "Galatians", correct: false },
      { content: "1 Thessalonians", correct: false },
      { content: "2 Corinthians", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the Cushite woman Moses married, which caused Miriam and Aaron to speak against him?",
    answers_attributes: [
      { content: "Zipporah", correct: true },
      { content: "Keturah", correct: false },
      { content: "Asenath", correct: false },
      { content: "Basemath", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which of the following is not a type of offering mentioned in Leviticus?",
    answers_attributes: [
      { content: "Atonement offering", correct: true },
      { content: "Grain offering", correct: false },
      { content: "Peace offering", correct: false },
      { content: "Sin offering", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the king of Salem who blessed Abram?",
    answers_attributes: [
      { content: "Melchizedek", correct: true },
      { content: "Abimelech", correct: false },
      { content: "Ahaziah", correct: false },
      { content: "Hiram", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "In the parable of the sower, what does the seed represent?",
    answers_attributes: [
      { content: "The word of God", correct: true },
      { content: "Faith", correct: false },
      { content: "Good deeds", correct: false },
      { content: "The Holy Spirit", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the Egyptian official who bought Joseph as a slave?",
    answers_attributes: [
      { content: "Potiphar", correct: true },
      { content: "Pharaoh", correct: false },
      { content: "Pithom", correct: false },
      { content: "Putiel", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which of these animals is not mentioned in the Bible?",
    answers_attributes: [
      { content: "Cat", correct: true },
      { content: "Dog", correct: false },
      { content: "Lion", correct: false },
      { content: "Bear", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the father of Boaz in the book of Ruth?",
    answers_attributes: [
      { content: "Salmon", correct: true },
      { content: "Obed", correct: false },
      { content: "Jesse", correct: false },
      { content: "Elimelech", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "Which disciple did Jesus call 'the Rock'?",
    answers_attributes: [
      { content: "Peter", correct: true },
      { content: "James", correct: false },
      { content: "John", correct: false },
      { content: "Andrew", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the man whose donkey spoke to him?",
    answers_attributes: [
      { content: "Balaam", correct: true },
      { content: "Balak", correct: false },
      { content: "Barak", correct: false },
      { content: "Boaz", correct: false }
    ]
  },
  {
    category: bible_basics,
    content: "Which of these is not one of the twelve tribes of Israel?",
    answers_attributes: [
      { content: "Manasseh", correct: true },
      { content: "Reuben", correct: false },
      { content: "Simeon", correct: false },
      { content: "Gad", correct: false }
    ]
  },
  {
    category: old_testament,
    content: "Who was the father of Methuselah?",
    answers_attributes: [
      { content: "Enoch", correct: true },
      { content: "Noah", correct: false },
      { content: "Lamech", correct: false },
      { content: "Jared", correct: false }
    ]
  },
  {
    category: new_testament,
    content: "In which book of the New Testament do we find the Hall of Faith?",
    answers_attributes: [
      { content: "Hebrews", correct: true },
      { content: "Romans", correct: false },
      { content: "Galatians", correct: false },
      { content: "Ephesians", correct: false }
    ]
  },
  {
    category: bible_advanced,
    content: "What was the name of the man who helped Simon of Cyrene carry Jesus' cross?",
    answers_attributes: [
      { content: "The Bible doesn't mention anyone else", correct: true },
      { content: "Alexander", correct: false },
      { content: "Rufus", correct: false },
      { content: "Joseph of Arimathea", correct: false }
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