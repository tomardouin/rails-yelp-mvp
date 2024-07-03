class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    validates :category, inclusion: %w[chinese italian japanese french belgian Chinese Italian Japanese French Belgian]
    validates :name, presence: true, uniqueness: true
    validates :address, presence: true, uniqueness: true
    validates :phone_number, presence: true, uniqueness: true
end
