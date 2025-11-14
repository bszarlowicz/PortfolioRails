require "administrate/base_dashboard"

class ReviewDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    reviewer_name: Field::String,
    reviewer_surname: Field::String,
    reviewer_profile: Field::HasOne,
    description: Field::Text,
    worked_with_me: Field::Boolean,
    cooperation_type: Field::String,
    overall_rating: Field::Number.with_options(decimals: 1),
    visible: Field::Boolean,
    created_at: Field::DateTime.with_options(format: "%d-%m-%Y %H:%M"),
    updated_at: Field::DateTime.with_options(format: "%d-%m-%Y %H:%M"),
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    reviewer_name
    reviewer_surname
    overall_rating
    visible
    created_at
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    reviewer_name
    reviewer_surname
    reviewer_profile
    description
    worked_with_me
    cooperation_type
    overall_rating
    visible
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    reviewer_name
    reviewer_surname
    description
    worked_with_me
    cooperation_type
    overall_rating
    visible
  ].freeze

  COLLECTION_FILTERS = {}.freeze

  def display_resource(review)
    "#{review.reviewer_name} #{review.reviewer_surname}"
  end
end