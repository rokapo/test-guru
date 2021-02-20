class DropTableUserTests < ActiveRecord::Migration[6.0]
  def up
    drop_table :user_tests, if_exists: true
  end

  def down
    create_table :user_tests do |t|
      t.references :user, null: false, foreign_key: true
      t.references :test, null: false, foreign_key: true

      t.timestamps
    end
  end
end
