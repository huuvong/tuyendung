class Thongtincongviec < ApplicationRecord
	 belongs_to :congty
	 belongs_to :vitricongviec
	 belongs_to :diadiem
	 # has_many :thongtincongviecs, dependent: :destroy

	 def self.search(congty_id, diadiem_id, vitricongviec_id)
		 if congty_id and diadiem_id and vitricongviec_id
			 where('congty_id like ? and diadiem_id like ? and vitricongviec_id like ?',
						 "%#{congty_id}%", "%#{diadiem_id}%", "%#{vitricongviec_id}%")
		 else
			 all
		 end
	 end
end
