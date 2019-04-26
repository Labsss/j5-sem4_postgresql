class Accomodation < ApplicationRecord

    has_many :reservations
    belongs_to :city

    validates :available_beds,
    presence: true,
    numericality: {greater_than: :0}

    validates :price,
    presence: true,
    numericality: {greater_than: :0}

    validates :description,
    presence: true,
    lenght: {minimum: 140}

    validates :has_wifi,
    presence: true

    validates :welcome_message,
    presence: true

end
