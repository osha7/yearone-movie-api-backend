class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :movie_api_id
      t.string :movie_title
      t.integer :up_votes, default: 0
      t.integer :down_votes, default: 0

      t.timestamps
    end
  end
end
