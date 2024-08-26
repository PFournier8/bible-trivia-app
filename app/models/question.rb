class Question < ApplicationRecord
  belongs_to :category
  has_many :answers
  validates :content, presence: true
end