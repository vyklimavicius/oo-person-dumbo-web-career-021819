# your code goes here
class Person
  def initialize(name) #parameter CALLBACK
    @name = name #instance variable
    @bank_account = 25
    @happy_points = 8
    @hygiene_points = 8
  end

  def name #Getter
    @name
  end

  def happiness #getter
     @happy_points
  end

  def happiness=(new_points)
    if ((new_points >= 0) && (new_points <= 10))
      @happy_points = new_points
    elsif (new_points > 10)
      @happy_points = 10
    elsif  (new_points < 0)
      @happy_points = 0
    end
  end

  def hygiene
    @hygiene_points
  end

  def hygiene=(new_points)
    if ((new_points >= 0) && (new_points <= 10))
      @hygiene_points = new_points
    elsif (new_points > 10)
      @hygiene_points = 10
    elsif  (new_points < 0)
      @hygiene_points = 0
    end
  end

  def bank_account
    @bank_account
  end

  def bank_account=(new_funds)
    @bank_account = new_funds
  end

  def happy?
    if @happy_points > 7
       true
    else
      false
    end
  end


  def clean?
    if @hygiene_points > 7
      true
    else
      false
    end
  end

  def get_paid(salary_amount)
    @bank_account += salary_amount
    "all about the benjamins"
  end

  def take_bath
     self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(instance)
    self.happiness += 3
    instance.happiness += 3
    "Hi #{instance.name}! It\'s\ #{@name}. How are you?"
  end

  def start_conversation(person_start,topic)
    case topic
     when "politics"
       self.happiness -= 2
       person_start.happiness -= 2
       "blah blah partisan blah lobbyist"
     when "weather"
       self.happiness += 1
       person_start.happiness += 1
       "blah blah sun blah rain"
     else
       "blah blah blah blah blah"
     end
  end
end


# penelope = Person.new("Stella")
# felix = Person.new("Felix")
# new_happiness = stella.happiness
# p new_happiness
# p stella.happiness +=1
# p new_happiness
# p penelope.hygiene = (9)
# p penelope.take_bath
# p penelope.start_conversation(felix,"weather")
# p penelope
# p felix


# felix = Person.new("Felix")
# p ryan.get_paid(5)
# p ryan.take_bath(2)
# p ryan.take_bath
# p ryan.work_out
# p stella.start_conversation(felix,"politics")
# p stella.happy_points
# p felix.happy_points
#=> happy_points += 3
#=> "Hi Felix! It's Stella. How are you?"
#  ryan.happy_points=(12)
#  ryan.hygiene_points=(9)
#  ryan.bank_account=(1000)
#
# ryan.happy?
# ryan.clean?
