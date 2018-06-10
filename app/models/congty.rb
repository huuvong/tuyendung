class Congty < ApplicationRecord
	has_many :thongtincongviecs, dependent: :destroy
end
