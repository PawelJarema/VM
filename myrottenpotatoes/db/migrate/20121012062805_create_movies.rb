class CreateMovies < ActiveRecord::Migration
  def up
    create_table 'movies' do |t|
      t.string 'title'
      t.string 'rating'
      t.text 'description'
      t.datetime 'release_date'
      # Add fields that let Rails automatically keep track
      # of whe movies are addes or modified
      t.timestamps
    end
  end

  def down
    drop_table 'movies' # deletes the whole table and all its data!
  end
end
