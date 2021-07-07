require "pry"
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    first_name = self.first_name
    last_name = self.last_name
    full_name = "#{first_name} #{last_name}"
  end
  
  def list_roles
    # roles = []
    # characters = self.characters.map { |character| character.name }
    # shows = self.shows.map { |show| show.name }
    # role = characters + shows
    # roles << role.join(" - ")
    # roles
    roles = []
    character = self.characters[0].name
    show = self.shows[0].name
    roles << [character, show]
    roles.join(" - ")
  end
end