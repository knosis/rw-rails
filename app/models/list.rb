class List < ActiveRecord::Base
  belongs_to : :user
  has_many :personalizations
  has_many :categories, :through => :personalizations
end
