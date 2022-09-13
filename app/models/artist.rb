class Artist <ActiveRecord::Base
  serialize :genres
  has_many :shows 
  has_many :venues, through: :artists

end