class Hair < ApplicationRecord
  COLORS = ["brun", "chatain", "noir", "blond", "blanc", "rouge", "bleu", "cendre", "roux"]
  TYPES = ["bouclé", "raide", "crepu", "ondulé"]

  belongs_to :user
  has_many :locations, dependent: :destroy
  has_one_attached :photo

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :color, presence: true
  validates :nature, presence: true
  validates :quantity, presence: true
  validates :price, presence: true

  validates :color, inclusion: { in: Hair::COLORS }
  validates :nature, inclusion: { in: Hair::TYPES }

  include PgSearch::Model
  pg_search_scope :search_by_nature_and_color,
    against: %i[nature color],
    using: {
      tsearch: { prefix: true }
    }
end
