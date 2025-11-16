class Review < ApplicationRecord
  
  has_one_attached :reviewer_profile
  
  validates :reviewer_name, presence: true
  validates :reviewer_surname, presence: true
  validates :description, presence: true
  validates :overall_rating, presence: true, 
            numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :cooperation_type, presence: true
  validates :worked_with_me, inclusion: { in: [true, false] }
  
  validates :reviewer_profile, content_type: ['image/png', 'image/jpg', 'image/jpeg'],
                               size: { less_than: 5.megabytes }

  scope :visible, -> { where(visible: true) }

  COOPERATION_TYPES = %w[friend work_colleague university_colleague employer client business_partner]
  
  def full_name
    "#{reviewer_name} #{reviewer_surname}"
  end
end
