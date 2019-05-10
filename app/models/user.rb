class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable         

 	has_many :products
 	has_many :comments

 	mount_uploader :avatar, AttachmentUploader

 	after_create :send_email_to_user
 	def send_email_to_user 		
 		UsermailerMailer.welcome_email(self).deliver 		 		
 	end

 	enum role: [:admin, :user]
 	
 	after_initialize :set_default_role, :if => :new_record?
	def set_default_role		
		self.role ||= :user
	end

end
