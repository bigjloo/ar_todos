require_relative 'config/application'

class Main
  def self.run!
    user_input = ARGV
    case user_input[0]
    when "list"
      View.list
    when "delete"
      Todo.delete(ARGV[1])
    when "add"
      Todo.add(ARGV[1..-1].join(' '))
    when "complete"
      Todo.complete(ARGV[1])
    else
      puts "I do not understand you"
    end
  end
end

Main.run!
