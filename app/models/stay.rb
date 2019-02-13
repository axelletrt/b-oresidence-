class Stay < ApplicationRecord
    belongs_to :tenant
    belongs_to :studio 
    validate :checkout_date_after_checkin_date
    validate :no_duplicated_stay  


    def checkout_date_after_checkin_date 
        return if checkout_date.blank? || checkin_date.blank?

        if checkout_date < checkin_date
            errors.add(:checkout_date, "must be after the checkin_date")
          end
    end 

    scope :overlapping, ->(period_start, period_end) do
        where "((checkin_date <= ?) and (checkout_date >= ?))", period_end, period_start
    end

    private

    def no_duplicated_stay
        if Stay.where('? < checkout_date and ? > checkin_date', self.checkin_date, self.checkout_date).any?
            errors.add(:checkout_date, 'it overlaps another stay')
        end
    end

 
    #(Q3) Method to display next_monthly_paiement 
    #def display_month 
        #if checkin_date.month or checkin_date.month == current.month 
        #logic? 
    #end 

    #(Q4) Method the amount(studio's monthly price)
    





end
