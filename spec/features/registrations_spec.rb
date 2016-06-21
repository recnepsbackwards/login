require 'rails_helper'

RSpec.feature "Registrations", type: :feature do
  context 'Going to website' do
    Steps 'Being welcomed' do
      Given 'I am on the landing page' do
        visit '/'
      end
      Then 'I can see a welcome message' do
        expect(page).to have_content("Welcome to the Login Page")
      end
      Then 'I can fill out the form' do
        fill_in :fname, with: 'John'
        fill_in :lname, with: 'Doe'
        fill_in :address, with: '1234 Fake St.'
        fill_in :city, with: 'San Diego'
        fill_in :state, with: 'CA'
        fill_in :zipcode, with: '92111'
        fill_in :country, with: 'USA'
        fill_in :phone1, with: '8582006024'
        fill_in :phone2, with: '7603527328'
        fill_in :phone3, with: '6299008736'
        fill_in :email, with: 'jdoe@hotmail.com'
        fill_in :username, with: 'jdoe123'
        fill_in :psswd, with: 'Duck50$'
      end
      Then 'I can click on the button' do
        click_on 'Submit'
      end
      Then 'I can see my login information' do
        expect(page).to have_content("jdoe123")
        expect(page).to_not have_content("No Phones")
      end
    end
    Steps 'Displaying if the user entered no phones into the form' do
      Given 'I am on the landing page and do not enter any phones' do
        visit '/'
      end
      Then 'I can see a welcome message' do
        expect(page).to have_content("Welcome to the Login Page")
      end
      Then 'I can fill out the form' do
        fill_in :fname, with: 'John'
        fill_in :lname, with: 'Doe'
        fill_in :address, with: '1234 Fake St.'
        fill_in :city, with: 'San Diego'
        fill_in :state, with: 'CA'
        fill_in :zipcode, with: '92111'
        fill_in :country, with: 'USA'
        fill_in :email, with: 'jdoe@hotmail.com'
        fill_in :username, with: 'jdoe123'
        fill_in :psswd, with: 'Duck50$'
      end
      Then 'I can click on the button' do
        click_on 'Submit'
      end
      Then 'I can see my login information' do
        expect(page).to have_content("jdoe123")
      end
      Then 'I can see that there are no phones entered' do
        expect(page).to have_content("No Phones")
      end
    end
  end
end
