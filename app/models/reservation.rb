class Reservation < ApplicationRecord

    belongs_to :user
    belongs_to :accomodation


    validates :start_date,
    presence: true

    validates :end_date,
    presence: true

    #def start_must_be_before_end_time
    #    errors.add(:start_time, "must be before end time") unless
    #        start_time < end_time
    #end

    #def duration
    #    :end_date - :start_date
    #end
    
end
