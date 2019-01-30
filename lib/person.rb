# your code goes here
class Person

  attr_reader :name, :hygiene

  attr_accessor :bank_account, :happiness

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    if @happiness > 10
      return 10
    elsif @happiness < 0
      return 0
    else
      return @happiness
    end
  end

  def hygiene=(num)
    if num > 10
      @hygiene = 10
    elsif num < 0
      @hygiene = 0
    else
      @hygiene = num
    end
  end

  def clean?
    if hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if happiness > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account = @bank_account + salary
    return "all about the benjamins"
  end

  def take_bath
    hygiene=(self.hygiene += 4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    hygiene=(self.hygiene -= 3)
    happiness=(self.happiness += 2)
    return "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    happiness=(person.happiness += 3)
    happiness=(self.happiness += 3)
    return "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      happiness=(person.happiness -= 2)
      happiness=(self.happiness -= 2)
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      happiness=(person.happiness += 1)
      happiness=(self.happiness += 1)
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end




end
