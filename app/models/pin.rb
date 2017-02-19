class Pin < ApplicationRecord
  belongs_to :user

  validates_presence_of :user_id, :category, :description, :lat, :lng

  validates_inclusion_of :category, in: ['bio waste', 'natural disaster', 'vandalism', 'trash', 'chemical spill']
end
