class Thongtincongviec < ApplicationRecord
	 belongs_to :congty
	 belongs_to :vitricongviec
	 belongs_to :diadiem
	 has_many :thongtincongviecs, dependent: :destroy
end
