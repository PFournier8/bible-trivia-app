class Answer < ApplicationRecord
  belongs_to :question

  validates :content, presence: { message: "Answer content cannot be blank" }
end