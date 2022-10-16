class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        self.first_name + ' ' + self.last_name
    end

    def list_roles
        array = []
        self.characters.map do |char|
            name = char.name
            show = char.show.name
            array << "#{name} - #{show}"
        end
        array
    end
end