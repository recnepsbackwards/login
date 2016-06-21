class UserInfo < ActiveRecord::Base
  has_many(:phones)
  validates :username, presence: true
  validates :psswd, presence: true
end
