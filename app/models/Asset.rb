class Asset < ActiveRecord::Base

  belongs_to :buyer

  @@all = []

  def initialize(name, value)
    @name = name
    @value = value
    self.class.all << self
  end

  def self.all
    @@all
  end
end
