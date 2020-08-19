class Hair < ApplicationRecord
  COLORS = ["brun", "chatain", "noir", "blond", "blanc", "rouge", "bleu", "cendre", "roux"]
  TYPES = ["bouclé", "raide", "crepu", "ondulé"]

  belongs_to :user
  has_many :locations, dependent: :destroy

  # validates :title, presence: true, uniqueness: true
  # validates :description, presence: true
  # validates :color, presence: true
  # validates :nature, presence: true
  # validates :quantity, presence: true
  # validates :price, presence: true

  # validates :color, inclusion: { in: Hair::COLORS }
  # validates :nature, inclusion: { in: Hair::TYPES }


end
