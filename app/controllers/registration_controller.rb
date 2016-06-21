class RegistrationController < ApplicationController
  def confirmation
    # # Create a new user based on text input fields from the form
    # @userinfo = UserInfo.new
    # # Setting the value of the username to the value of the username input field
    # @userinfo.username = params[:username].strip
    # # Save (insert) new user into the database
    # @userinfo.save
    @userinfo = UserInfo.create!(fname: params[:fname], lname: params[:lname], address: params[:address], city: params[:city], state: params[:state], zipcode: params[:zipcode], country: params[:country], email: params[:email], username: params[:username], psswd: params[:psswd])

    if !params[:phone1].blank? || !params[:phone2].blank? || !params[:phone3].blank?
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
    end
    if @userinfo.phones.blank?
      @message = "No Phones"
    else
      render 'confirmation.html.erb'
    end
  end
end
