class SchoolClass < ActiveRecord::Base

    def to_sh
        self.title + " " + self.room_number
      end
end