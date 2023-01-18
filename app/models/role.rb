require 'pry'

class Role < ActiveRecord::Base
    has_many :auditions

    def actors
       self.auditions.map do |audition|
            audition.actor
        end
    end

    def locations
        self.auditions.map do |audition|
            audition.location
        end
    end

    def lead
        self.auditions.find_by(hired: true)
    end

    def understudy
        self.auditions.where(hired: true).second
    end
  
end