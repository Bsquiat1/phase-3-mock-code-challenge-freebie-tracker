class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def freebies
        self.freebies
    end

    def devs
        self.devs
    end

    def give_freebies(dev, item_name, value)
        Freebie.create(dev: dev, company: self, item_name: item_name, value: value)
    end

    def self.oldest_company
        self.order(:founding_year).first
    end

end
