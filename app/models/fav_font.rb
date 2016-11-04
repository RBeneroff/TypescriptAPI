class FavFont < ApplicationRecord
  belongs_to :user
  validates :font_family, uniqueness: {scope: :user_id}
end
