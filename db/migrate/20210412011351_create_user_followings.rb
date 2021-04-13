class CreateUserFollowings < ActiveRecord::Migration[6.1]
  def change
    create_table :user_followings do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :follower_id
      t.integer :followee_id

      t.timestamps
    end
  end
end
