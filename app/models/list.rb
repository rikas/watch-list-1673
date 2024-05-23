class List < ApplicationRecord
  has_many :bookmarks # Bookmarks table has a list_id
  # has_many :movies # Movies table has NOT a list_id

  has_many :movies, through: :bookmarks, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
