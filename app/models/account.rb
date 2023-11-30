class Account < ApplicationRecord
    belongs_to :user
    validates :account_number, :address, presence: true
end
