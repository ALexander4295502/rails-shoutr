class CreateFollowingRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :following_relationships do |t|
      t.references :follower, foreign_key: { to_table: :users }, null: false, index: true
      t.references :followed_user, foreign_key: { to_table: :users }, null: false, index: true

      t.timestamps
    end

    add_index :following_relationships, %i[follower_id followed_user_id], name: :relationship_index
  end
end
