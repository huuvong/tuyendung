class Vitricongviec < ApplicationRecord
  has_many :thongtincongviecs, dependent: :destroy
# has_many :thongtincanhans, dependent: :destroy
end
