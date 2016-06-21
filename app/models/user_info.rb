class UserInfo < ActiveRecord::Base
  has_many(:phones)
end
