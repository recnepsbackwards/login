class RegistrationController < ApplicationController
  def confirmation
    # Create a new user based on text input fields from the form
    @userinfo = UserInfo.new
    # Setting the value of the username to the value of the username input field
    @userinfo.username = params[:username].strip
    # Save (insert) new user into the database
    @userinfo.save

    #
    phone = Phone.new
    #
    phone.number = params[:phone1]
    #
    @userinfo.phones << phone
    #
    phone.save

    #
    phone2 = Phone.new
    #
    phone2.number = params[:phone2]
    #
    @userinfo.phones << phone2    #

    phone2.save

    #
    phone3 = Phone.new
    #
    phone3.number = params[:phone3]
    #
    @userinfo.phones << phone3
    #
    phone3.save

    if phone.strip.empty? && phone2.strip.empty? && phone3.strip.empty?
      @userinfo.phones = "No Phones"
    else
      render 'confirmation.html.erb'
    end
  end
end
