class Place < ApplicationRecord
  has_many :images, dependent: :destroy
  has_ancestry
end
