require_relative '../../app/models/task.rb'
require_relative '../../app/controllers/todo.rb'

class View
  def self.add(id, name)
    puts "#{id}) #{name} - added!"
  end

  def self.list
    list = Task.all.order(completed: :asc)
    list.each do |task|
      puts "#{task.id}) #{task.name} (#{task.completed?})"
    end
  end

  def self.delete(name)
    puts "Deleted '#{name}' from your TODO list"
  end

  def self.completed(name)
    puts "Completed '#{name}' from your TODO list"
  end
end