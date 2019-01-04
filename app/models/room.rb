class Room < ApplicationRecord
  belongs_to :report
  has_many :room_items, dependent: :destroy

end
