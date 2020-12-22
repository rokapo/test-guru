# frozen_string_literal: true

class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User'
  has_many :questions, dependent: :delete_all
  has_many :user_tests, dependent: :delete_all
  has_many :users, through: :user_tests, dependent: :delete_all

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }
  scope :tests_by_category, -> (category) { joins(:category).where('categories.title = ?', category) }

  validates :title, presence: true, uniqueness: { scope: :level }
  validates :level, numericality: { only_integer: true, greater_than_or_equal: 0 }

  def self.titles_of_tests_by_category(category)
    tests_by_category(category).order(title: :desc).pluck(:title)
  end
end
