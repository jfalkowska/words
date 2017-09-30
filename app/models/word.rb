class Word < ApplicationRecord
  validates :word, :pronunciation, presence: true
  validates :word, :pronunciation, uniqueness: true
end
