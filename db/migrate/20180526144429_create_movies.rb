class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.boolean :highlighted, default: false
      t.string :title
      t.text :description
      t.string :thumbnail_key
      t.string :video_key
      t.integer :episode_number
      t.string :featured_thumbnail_key
      t.references :serie, optional: true, foreign_key: true
      t.references :category, foreign_key: true
      t.string :thumbnail_cover_key
<<<<<<< HEAD:db/migrate/20180526015935_create_movies.rb

=======
      
>>>>>>> generate_models:db/migrate/20180526144429_create_movies.rb
      t.timestamps
    end
  end
end