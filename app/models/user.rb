# frozen_string_literal: true

class User < ApplicationRecord
  has_many :user_tests, dependent: :delete_all
  has_many :tests, through: :user_tests, dependent: :delete_all
  has_many :created_tests, class_name: 'Test', foreign_key: 'author_id', dependent: :delete_all

  validates :login, :email, presence: true

  def tests_by_level(level = 0)
    tests.where(level: level)
  end
end
