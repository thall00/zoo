class Tiger < ActiveRecord::Base
  validates_presence_of :appetite, message: "Appetite cannot be blank."
  validates_numericality_of :appetite, message: "Appetite must be an integer."

  def hungry?
    self.appetite > 0
  end

  def eat zebra
    self.appetite -= zebra.weight
    zebra.destroy
  end
  
end
