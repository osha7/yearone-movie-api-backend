class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.string :user_id
      t.integer :up_votes
      t.integer :down_votes

      t.timestamps
    end
  end
end
