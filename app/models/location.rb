class Location < ApplicationRecord
  belongs_to :hair
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_after_start_date
  validate :valid_dates

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if start_date > end_date
      errors.add(:start_date, "can't be after end date")
    end
  end

  def valid_dates
    locations = hair.locations
    data_ranges = locations.map { |loc| loc.start_date.to_date..loc.end_date.to_date }

    if !(date_included?(data_ranges))
      errors.add(:start_date, "not available")
    end
  end

  def date_included?(data_ranges)
    data_ranges.all? do |une_duree_de_loc|
      une_duree_de_loc.to_a.each do |day|
        return false if (start_date.to_date..end_date.to_date).include?(day)
      end
    end
  end


end
