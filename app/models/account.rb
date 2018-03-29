class Account < ApplicationRecord
  # Local users
  has_one :user, inverse_of: :account

  validates :username, presence: true    
end
