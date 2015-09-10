class User < ActiveRecord::Base

  has_secure_password

  has_one :list
  before_destroy { lists.clear }

end
