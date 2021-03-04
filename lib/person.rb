require 'pry'

class Person
    #with a name that cannot be changed.
    attr_reader :name
    #a person instance can change his/her bank_account amount
    #a person instance can change his/her happiness index 
    #a person instance is initialized with a hygiene index of 8
    attr_accessor :bank_account, :happiness, :hygiene

     #First you need to create a person class that is initialized
    def initialize(name)
        @name = name #this is how the person remembers their name
        @bank_account = 25 #a new person instance is initialized with a bank_account balance of $25
        @happiness = 8 # a new person instance is initialized with a happiness index of 8
        @hygiene = 8 #a person instance is initialized with a hygiene index of 8
    end
    # a person's happiness doesn't exceed 10
    # a person's happiness doesn't go below 0
    def happiness
        if @happiness < 0
            @happiness = 0
        elsif @happiness > 10
            @happiness = 10
        else
            @happiness
        end
    end
    # a person instance's hygiene index cannot exceed 10
    # a person instance hygiene index cannot be less than 0
    def hygiene
        if @hygiene < 0
            @hygiene = 0
        elsif @hygiene > 10
            @hygiene = 10
        else
            @hygiene
        end
    end

    # returns true if happiness is greater than seven, else false
    def happy?
        @happiness > 7
        #self.happiness > 7
    end

    #returns true if hygiene is greater than seven, else false
    def clean?
        @hygiene > 7
    end

    # accepts an argument of salary
    # increments bank_account by the salary
    # returns 'all about the benjamins'
    def get_paid(salary)
        @bank_account += salary
        #self.bank_account += salary
        "all about the benjamins"
    end

    # makes the person cleaner by 4 points
    # returns a song
    # can't make a person cleaner by 10 points (hint: use the custom #hygiene= method)
    # calls on the #hygiene= method to increment hygiene
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
    # makes the person dirtier by 3 points
    # never makes the person have negative dirty points
    #   (hint: use the #hygiene= method)
    # calls on the #hygiene= method to decrease hygiene
    self.hygiene -= 3
    # makes the person happier by 2 points
    # never makes the person have more than 10 happiness points
    #   (hint: use the #happiness= method)
    # calls on the #happiness= method to increment happiness
    self.happiness += 2
    # returns Queen lyrics
    "♪ another one bites the dust ♫"
    end

    def call_friend(friend) # accepts one argument, an instance of the Person class
        # makes the person calling happier by three points 
        self.happiness += 3
        # makes the friend happier by three points 
        friend.happiness +=3 #calling friend using @happiness measurement
        # never makes the happiness of either party exceed 10
        #   (hint: use the cutom #happiness= method) 
        # calls on the #happiness= method to increment happiness 
        # returns a string that reflects the caller's side of the conversation
        "Hi #{friend.name}! It's #{self.name}. How are you?" #need to reference to @name
    end

    def start_conversation(name, topic) #accepts two arguments, a person to strike a convo with and a topic
        if topic == "politics"
        # if topic is politics, it makes both people in the convo two points less happy 
        # never makes either party less than 0 points happy (never negative)
        #   (hint: use your #happiness= method)
            self.happiness -= 2
            name.happiness -= 2
        # returns 'blah blah partisan blah lobbyist' if the topic is politics 
            "blah blah partisan blah lobbyist"
        # calls on the #happiness= method 
        elsif topic == "weather"
        # if topic is weather, it makes both people in the convo one point more happy (FAILED - 2)
        # never makes either party more than 10 points happy
        #   (hint: use your #happiness= method) (FAILED - 3)
        # calls on the #happiness= method (FAILED - 4)
            self.happiness += 1
            name.happiness += 1
        # returns 'blah blah sun blah rain' if the topic is weather (FAILED - 1)
            "blah blah sun blah rain"
        else
            # returns 'blah blah blah blah blah' if the topic is not politics or weather (FAILED - 8)
            # if topic is not politics or weather, it doesn't affect happiness (FAILED - 9)
            "blah blah blah blah blah"
        end
    end

end
