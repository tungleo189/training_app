class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_save :send_invite_notification

  def send_invite_notification
    binding.pry
    UserInvitationJob.perform_later self
  end
end
