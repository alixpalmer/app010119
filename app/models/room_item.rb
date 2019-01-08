class RoomItem < ApplicationRecord
  belongs_to :room, optional: true, inverse_of: :room_items
  validates         :name, presence: true

end
