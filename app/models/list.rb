class List < ActiveRecord::Base
  belongs_to :city
  has_many :descriptions
end
