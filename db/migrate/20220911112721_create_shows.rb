class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
    t.integer :artist_id
    t.integer :venue_id
    t.datetime :start_time
  end
  end
end
