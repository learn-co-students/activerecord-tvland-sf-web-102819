class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    character_name = self.name
    catchphrase = self.catchphrase
    "#{character_name} always says: #{catchphrase}"
  end
end