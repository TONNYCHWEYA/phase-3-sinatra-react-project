class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :phone
      t.string :genres 
      t.string :facebook_link
      t.string :image_link
      t.string :website_link
      t.boolean :looking_for_venues
      t.text :seeking_description

    end
  end
end
