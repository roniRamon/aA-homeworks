class House < ApplicationRecord
  validates :address, presence: true

  has_many :residents,
    foreign_key: :house_id,
    primary_key: :id,
    class_name: :Person

end
