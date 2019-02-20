# your code goes here
class Person
  def initialize(name) #parameter CALLBACK
    @name = name #instance variable
    # @bank_account = 25
    # @happy_points = 8
    @hygiene_points = 8
  end

  def name #Getter
    @name
  end

  def happiness #getter
     @happy_points = 8
  end

  def happiness=(new_points)
    if ((new_points >= 0) && (new_points <= 10))
      @happy_points = new_points
    end
  end

  def hygiene_points=(new_points)
    if ((new_points >= 0) && (new_points <= 10))
      @hygiene_points = new_points
    end
  end

  def bank_account
    @bank_account = 25
  end

  def bank_account=(new_funds)
    @bank_account = new_funds
  end

  def happy?
    if @happy_points > 7
      puts true
    else
      puts false
    end
  end


  def clean?
    if @hygiene_points > 7
      puts true
    else
      puts false
    end
  end

  def get_paid(salary_amount)
    @bank_account += salary_amount
    "all about benjamins"
  end

  def take_bath
    @hygiene_points += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @happy_points += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(instance)
    "Hi #{instance.name}! It\'s\ #{@name}. How are you?"
  end

  def start_conversation(person_start,topic)
    case topic
     when "politics"
       @happy_points -= 1
       person_start.happy_points -= 1
       "blah blah partisan blah lobbyist"
     when "weather"
       @happy_points += 1
       person_start.happy_points += 1
       "blah blah sun blah rain"
     else
       "blah blah blah blah blah"
     end
  end
end


stella = Person.new("Stella")
p stella.happiness = 1
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
