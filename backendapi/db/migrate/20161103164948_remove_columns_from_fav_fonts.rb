class RemoveColumnsFromFavFonts < ActiveRecord::Migration[5.0]
  def change
    remove_column :fav_fonts, :subsets
    remove_column :fav_fonts, :version
    remove_column :fav_fonts, :variant
    remove_column :fav_fonts, :font_url
    add_column :fav_fonts, :category, :string
    add_column :fav_fonts, :origin, :string
  end
end
