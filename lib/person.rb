class Person

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness= (happiness_points)
    if !(happiness_points < 1 || happiness_points > 10)
      @happiness = happiness_points
    elsif happiness_points > 10
      @happiness = 10
    else
      @happiness = 0
    end
  end

  def hygiene= (hygiene_points)
    if !(hygiene_points < 1 || hygiene_points > 10)
      @hygiene = hygiene_points
    elsif hygiene_points > 10
      @hygiene = 10
    else
      @hygiene = 0
    end
  end

  def happy?
    @happiness > 7? true : false
  end


  def clean?
    @hygiene > 7? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    'all about the benjamins'
  end

  def take_bath
    @hygiene += 4
    self.hygiene= @hygiene
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    self.hygiene= @hygiene
    @happiness += 2
    self.happiness= @happiness
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    @happiness += 3
    self.happiness= @happiness
    friends_happiness = person.happiness + 3
    person.happiness= friends_happiness
    "Hi #{person.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      @happiness -= 2
      self.happiness= @happiness
      friends_happiness = person.happiness - 2
      person.happiness= friends_happiness
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      @happiness += 1
      self.happiness= @happiness
      friends_happiness = person.happiness + 1
      person.happiness= friends_happiness
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
# your code goes here
