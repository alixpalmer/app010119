class RoomItem < ApplicationRecord
  belongs_to :room
  has_many :comments, dependent: :destroy

end
