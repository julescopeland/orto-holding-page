class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      deliver_email
      redirect_to :root, notice: thank_you_message
    else
      flash.now[:error] = 'There was a problem, sorry.'
      render "home/index"
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :name, :message)
  end

  def deliver_email
    ContactMailer.new_registrant(@contact).deliver_later
  end

  def thank_you_message
    if @contact.message.size > 5
      "Thank you. We will get back to you as soon as we can."
    else
      "Thank you. We will email you at #{@contact.email} when we launch."
    end
  end
end
