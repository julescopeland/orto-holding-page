class ContactMailer < ApplicationMailer
  def new_registrant(contact)
    @contact = contact
    mail(to: "jules@orto.uk.com, josh@orto.uk.com", subject: 'New registrant on site')
  end
end
