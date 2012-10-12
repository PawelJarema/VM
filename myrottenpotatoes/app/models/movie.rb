class Movie < ActiveRecord::Base
attr_accessible :title, :description, :release_date, :rating
end
