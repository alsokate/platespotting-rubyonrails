class Scramble < ActiveRecord::Base
  belongs_to :country
  attr_accessible :code
end
