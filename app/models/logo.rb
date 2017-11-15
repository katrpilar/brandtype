class Logo < ApplicationRecord
	attr_accessible :brandname, :logo
	belongs_to :brand
	mount_uploader :logo, LogoUploader
end
