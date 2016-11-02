class CreateFavFonts < ActiveRecord::Migration[5.0]
  def change
    create_table :fav_fonts do |t|
      t.string :font_family
      t.string :subsets
      t.string :version
      t.string :variant
      t.string :font_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
