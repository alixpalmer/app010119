class RoomItem < ApplicationRecord
  belongs_to :room
  has_many :room_item_comments, dependent: :destroy
end
