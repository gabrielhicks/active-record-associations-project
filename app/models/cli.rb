require 'tty-prompt'
require 'tty-box'

class CLI
    def start
        system("clear")
        prompt = TTY::Prompt.new
        user = User.login
        selection = prompt.select("Hello there #{user.name}! What would you like to do?") do |menu|
            menu.choice name: "View the Library", value: 1
            menu.choice name: "Return a Book", value: 2
            menu.choice name: "Quit", value: 3
        end
        if selection == 3
            box = TTY::Box.frame(width: 30, height: 8, align: :center, border: :thick, padding: 2) do
                "YOU BETTER BRING THAT BACK BEFORE ITS DUE" 
                end
                puts box
                sleep(3)
                exit!
        elsif selection == 2
            box = TTY::Box.warn("YOU BETTER HAVE YOUR BOOKS\nOR ELSE YOU WILL BE SORRY!")
            puts box
            sleep(3)
        else selection == 1
            return true
        end
    end

    def start_game

    end
end