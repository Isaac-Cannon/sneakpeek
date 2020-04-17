class Sneakpeek

attr_accessor :username

    def initialize(username)
        @username = username
        @predefinedPassword = "Password1"
        @attemptCounter = 5
        @authenticated = false
    end

    def login
            puts "Welcome #{@username}. Please enter your password to access the cake."
         while !@authenticated 
            entered_password = gets.strip
            if entered_password == @predefinedPassword
                puts "The cake is yours #{@username}!"
            @authenticated = true
            else @attemptCounter = @attemptCounter - 1
                puts "Incorrect password! #{@attemptCounter} attempts remaining."
            end
            if @attemptCounter == 0
                puts "You have been locked out of Sneakpeek. Please contact the administrator."
                break
            end
        end
    end


end

account = Sneakpeek.new("Chell")
p account.username
account.login