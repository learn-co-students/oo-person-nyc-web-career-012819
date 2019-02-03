# our code goes here
class Person

attr_reader :name
attr_accessor :bank_account

 def initialize(name)
   @name = name
   @bank_account = 25
   @happiness = 8
   @hygiene = 8
 end


def happiness
   @happiness
end

def happiness=(happiness)
  if happiness >= 10
     @happiness = 10
   else if
   happiness <= 0
    @happiness = 0
  else
    @happiness = happiness
  end
  end
end

def hygiene
  @hygiene
end

def hygiene=(hygiene)
  if hygiene >= 10
     @hygiene = 10
   else if
     hygiene <= 0
    @hygiene = 0
  else
    @hygiene = hygiene
  end
end
end

def happy?
  if @happiness > 7
      true
  else
     false
  end
end

def clean?
  if @hygiene > 7
      true
  else
     false
end
end

def get_paid(salary)
  @bank_account += salary
  return "all about the benjamins"
end

def take_bath
  self.hygiene = @hygiene + 4
  return "♪ Rub-a-dub just relaxing in the tub ♫"

end

def work_out
  self.hygiene = @hygiene -3
  self.happiness = @happiness + 2
  return "♪ another one bites the dust ♫"
end

def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
  if topic == "politics"
   person.happiness = @happiness - 2
   self.happiness = @happiness - 2
    return "blah blah partisan blah lobbyist"
  else if topic == "weather"
    person.happiness = @happiness + 1
    self.happiness = @happiness + 1
    return "blah blah sun blah rain"
 else
    return "blah blah blah blah blah"
 end
end
end
end
