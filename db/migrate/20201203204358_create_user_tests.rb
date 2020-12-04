# frozen_string_literal: true

class CreateUsertests < ActiveRecord::Migration[6.0]
  def change
    create_table :user_tests do |t|
      t.references :user, null: false, foreign_key: true
      t.references :test, null: false, foreign_key: true

      t.timestamps
    end
  end
end
