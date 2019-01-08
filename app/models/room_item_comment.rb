class RoomItemComment < ApplicationRecord
  belongs_to :room_item, optional: true
  has_many :room_item_comment_photos, dependent: :destroy
end
