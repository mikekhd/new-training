class User < ActiveRecord::Base
  attr_accessible :admin, :email, :password_digest
end
