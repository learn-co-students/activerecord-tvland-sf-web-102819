require "pry"
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    list = []
    first_name = self.actors.map { |actor| actor.first_name }
    last_name = self.actors.map { |actor| actor.last_name }
    full_name = (first_name + last_name).join(" ")
    list << full_name
    # binding.pry
    # put "end"
  end
end