# frozen_string_literal: true

class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User'
  has_many :questions, dependent: :delete_all
  has_many :user_tests, dependent: :delete_all
  has_many :users, through: :user_tests, dependent: :delete_all

  def self.tests_by_category(category)
    joins(:category).where('categories.title = ?', category).order(title: :desc).pluck(:title)
  end
end
