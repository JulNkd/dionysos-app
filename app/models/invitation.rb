class Invitation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  include PgSearch::Model
  pg_search_scope :global_search,
                  against: [ :status, :comment ],
                  associated_against: {
                    user: [ :first_name, :last_name ]
                  },
                  using: {
                  tsearch: { prefix: true }
    }
end
