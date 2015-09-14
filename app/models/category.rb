class Category < ActiveRecord::Base
  has_many :wins
  belongs_to :list
end
