 class Venue <ActiveRecord::Base
serialize :genres
has_many :shows
has_many :artists, through: :shows
end