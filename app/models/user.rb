# frozen_string_literal: true

class User < ApplicationRecord
  def tests_by_level(level = 0)
    Test.joins('JOIN user_tests ON tests.id = user_tests.test_id').where('user_tests.user_id = ? AND tests.level = ?', id, level)
  end
end
