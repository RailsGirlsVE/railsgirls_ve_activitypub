class Account < ApplicationRecord
  # Local users
  has_one :user, inverse_of: :account

  validates :username, presence: true

  def self.find_local!(username)
    exist_local?(username) || raise(ActiveRecord::RecordNotFound)
  end

  def self.exist_local?(username)
    Account.where(domain: nil)
           .where.not(username: '')
           .where(Account.arel_table[:username].lower.eq username.to_s.downcase)
           .take
  end

  def to_param
    username
  end
end
