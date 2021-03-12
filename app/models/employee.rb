class Employee < ApplicationRecord
    has_many :tasks, dependent: :destroy
    
    validates :name, presence: true
    validates :trigram, presence: true, length: {maximum: 5}
    validates :brand, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
