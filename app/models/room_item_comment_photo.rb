class RoomItemCommentPhoto < ApplicationRecord
  belongs_to :room_item_comment, optional: true
end
