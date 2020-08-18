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


  # record est l'objet de la validation
  # value est assignée à la date de debut et de fin rentrées par le user
  # attribute est soit la date de depart soit la date de fin
  def valid_dates
    locations = hair.locations
    data_ranges = locations.map { |loc| loc.start_date..loc.end_date }


    if !(date_included?(data_ranges))
      record.errors.add(attribute, "not available")
    end
  end

  def date_included?(data_ranges)
    data_ranges.all? do |une_duree_de_loc|
      une_duree_de_loc.to_a.each do |day|
        return false if location.start_date..location.end_date).include?(day)
      end
    end
  end


end
