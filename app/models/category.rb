class Category < ActiveRecord::Base
  has_many :events
  has_many :wins, :through => :events
  has_many :personalizations
  has_many :lists, :through => :personalizations

  belongs_to :list
end
