class Personalization < ActiveRecord::Base
  belongs_to :category
  belongs_to :list
end
