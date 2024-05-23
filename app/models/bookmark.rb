class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  # 1) Bookmark comment cannot be shorter than 6 characters
  # 2) Bookmark is unique for a given movie/list couple
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }
end
