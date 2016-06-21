class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string :fname
      t.string :lname
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :country
      t.string :email
      t.string :username
      t.string :psswd

      t.timestamps null: false
    end
  end
end
