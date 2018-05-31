class UserMailer < ApplicationMailer
  def welcome_email
     mail(from: "manujouve@gmail.com",
          to: "test@test.com",
          subject: "Bienvenue, sur le site Miaouuu")
  end


  def order_email
    mail(from: "manujouve@gmail.com",
        to: "test@test.com",
        subject: "Une commande a été passée")
  end
  
end
