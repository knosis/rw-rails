class Win < ActiveRecord::Base
  has_many :events
  has_many :categories, :through => :events

  def init
    self.score  ||= 0   #will set the default value only if it's nil
  end

  # validates :title, :presence => true
  # validates :content, length: { maximum: 240 }
  # validates :score, :inclusion => {:in => [0,1]}
end
