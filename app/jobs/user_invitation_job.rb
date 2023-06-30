class UserInvitationJob < ApplicationJob
    def perform user
      email_invitation user 
    end
  
    private
  
    def email_invitation user
        UserMailler.welcome_email(user).deliver
    end
  end
  