class Song < ApplicationRecord
  has_many :words, dependent: :destroy
end
