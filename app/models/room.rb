class Room < ApplicationRecord
  belongs_to :report, inverse_of: :rooms, optional: true, autosave: true
  has_many :room_items, dependent: :destroy
  # accepts_nested_attributes_for :room_items, allow_destroy: true
  validates_presence_of :report
  validates :name, :presence => true

end
