class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
    Classification.all
  end

  def self.longest
    Boat.longest.classifications
      # def self.longest
  #   # order('length DESC').first
  # end
  end

end
