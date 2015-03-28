class Description < ActiveRecord::Base
  belongs_to :List
  has_many :images
end
