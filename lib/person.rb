# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account , :happiness , :hygiene

    def initialize(name,bank_account = 25 ,happiness = 8 ,hygiene =  8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happy)
        if happy < 0
            @happiness = 0
        elsif happy > 10
            @happiness = 10
        else
            @happiness = happy
        end
    end

    def hygiene=(value)
        if value < 0
            @hygiene = 0
        elsif value > 10
            @hygiene = 10
        else
            @hygiene = value
        end
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def clean?
        self.hygiene > 7 ? true : false
    end

    def get_paid(amount)
        self.bank_account += amount
        return "all about the benjamins"  
    end

    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def take_out
        self.hygiene += 4
        return  "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == 'politics'
            self.happiness -= 2
            friend.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness += 1
            friend.happiness += 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end

end

# puts person.bank_account