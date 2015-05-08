class ContactMailer < ApplicationMailer
  def new_registrant(contact)
    @contact = contact
    mail(to: "info@orto.uk.com", subject: 'New registrant on site')
  end
end
