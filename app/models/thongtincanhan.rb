class Thongtincanhan < ApplicationRecord
	belongs_to :thongtincongviec
	belongs_to :vitricongviec
	mount_uploader :filedinhkem, AttachmentUploader
end
