class Volunteer < ApplicationRecord
  DAYS = ["Sat June 6th", "Sun June 7th", "Sat June 13th", "Sun June 14th", "Sat June 20th", "Sun June 21st", "Sat June 27th", "Sun June 28th"]
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :days, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :hours, numericality: { only_integer: true }
  validates :park_id, presence: true

 belongs_to :park


def self.days
  two_d = []
  DAYS.each do |f|
    two_d << [f,f]
  end
  return two_d
end

def full_name
  "#{first_name} #{last_name}"
end

end
