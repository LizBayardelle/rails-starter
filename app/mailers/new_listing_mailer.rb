class NewListingMailer < ApplicationMailer
  default from: "anthony@ocrealtor.info"

  def new_listing(listing, user)
    @listing = listing
    @user = user
    mail(to: user.email, subject: "Could this be your new house?")
  end
end
