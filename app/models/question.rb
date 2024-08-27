class Question < ApplicationRecord
  belongs_to :category
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true

  validates :content, presence: { message: "Question content cannot be blank" }
  validates :category_id, presence: { message: "Category must be selected" }
  validate :has_four_answers
  validate :has_one_correct_answer

  private

  def has_four_answers
    if answers.reject(&:marked_for_destruction?).length != 4
      errors.add(:base, "Must have exactly four answers")
    end
  end

  def has_one_correct_answer
    if answers.select(&:correct?).count != 1
      errors.add(:base, "Please select the correct answer choice")
    end
  end
end