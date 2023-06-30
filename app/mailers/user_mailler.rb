class UserMailler < ActionMailer::Base
    default from: "tung189cv@gmail.com"
    
    def welcome_email user
        @user = user
        mail(to: @user.email, subject: "Invite Email")
    end      
end
  