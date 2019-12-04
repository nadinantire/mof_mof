class ContactMailer < ApplicationMailer

    def contact_mail(notification)
        @notification = notification
      
        mail to: @notification.user.email, subject: "confirmation e-mail of inquiry"
        end

end
