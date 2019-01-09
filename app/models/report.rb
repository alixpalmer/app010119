class Report < ApplicationRecord
  # has_many :comments, dependent: :destroy
  has_many :rooms, dependent: :destroy, inverse_of: :report, autosave: true
  # has_many :room_items, through: :rooms
  belongs_to :user, inverse_of: :report, optional: true, autosave: true
  accepts_nested_attributes_for :rooms, allow_destroy: true
  # accepts_nested_attributes_for :room_items, allow_destroy: true

end
