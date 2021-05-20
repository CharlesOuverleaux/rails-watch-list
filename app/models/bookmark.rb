class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates_length_of :comment, minimum: 5
  validates_uniqueness_of :movie_id, :scope => :list_id
end
