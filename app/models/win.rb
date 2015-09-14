class Win < ActiveRecord::Base
  has_many :categories

  def init
    self.score  ||= 0   #will set the default value only if it's nil
  end

  before_save :init_data
  def init_data
    self.event_date ||= Date.today if new_record?  #will set the default value only if it's nil
  end

  # validates :title, :presence => true
  # validates :content, length: { maximum: 240 }
  # validates :score, :inclusion => {:in => [0,1]}
end
