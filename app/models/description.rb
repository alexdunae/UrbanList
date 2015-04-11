class Description < ActiveRecord::Base
  belongs_to :list
  has_many :images
end
