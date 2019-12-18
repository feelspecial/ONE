class Place < ApplicationRecord
  has_many :images
  has_ancestry
end
