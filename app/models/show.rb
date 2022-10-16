class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        array = []
        self.actors.map do |actor|
            first = actor.first_name
            last = actor.last_name
            name = first + ' ' + last
            array << name
        end
        array
    end
end