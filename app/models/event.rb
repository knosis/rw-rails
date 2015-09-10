class Event < ActiveRecord::Base
  belongs_to :category
  belongs_to :win

  before_save :init_data
  def init_data
    self.event_date ||= Date.today if new_record?  #will set the default value only if it's nil
  end
end
