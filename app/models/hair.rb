class Hair < ApplicationRecord
  belongs_to :user
  has_many :locations
end
