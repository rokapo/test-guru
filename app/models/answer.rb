# frozen_string_literal: true

class Answer < ApplicationRecord
  ANSWERS_LIMIT = 4

  belongs_to :question

  scope :correct_answers, -> { where(correct: true) }

  validates :body, presence: true
  validate :answers_limit

  private

  def answers_limit
    errors.add(:limit, 'limit reached') if question.answers.size == ANSWERS_LIMIT
  end
end
