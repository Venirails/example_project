class NotifierMailer < ApplicationMailer
    def alert_admin
        mail(to:  "veni.rails@gmail.com",subject: "ALERT - A new book has been added!")
    end
end
