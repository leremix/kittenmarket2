class UserMailer < ApplicationMailer
  def welcome_email(user)
     mail(from: "adteck@gmail.com",
          to: "karouihamza@hotmail.com",
          subject: "Bienvenue, sur le site Miaouuu")
  end

end
