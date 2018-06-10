class Diadiem < ApplicationRecord
has_many :thongtincongviecs, dependent: :destroy
end
