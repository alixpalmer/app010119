class RoomItem < ApplicationRecord
  belongs_to :room, optional: true, inverse_of: :room_items
  has_many :room_item_comments
  validates         :name, presence: true

end
