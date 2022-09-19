class User < ApplicationRecord
  include User::Avatar

  has_secure_password
end
