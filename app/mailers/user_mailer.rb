class UserMailer < ApplicationMailer
  def welcome_email(user)
     mail(from: "agenceaixit@gmail.com",
          to: user.email,
          subject: "Bienvenue, sur le site Miaouuu")
  end






  def order_email

    mail(
        from: "agenceaixit@gmail.com",
        to: "test@test.com",
        subject: "Une commande a été passée"
    )

  end
end
