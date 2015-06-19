

class View
  def self.display_add_result(id, name)
    puts "#{id}) #{name} - added!"
  end

  def self.display_list(task_id, task_name, task_completed)
    # list = Task.all.order(completed: :asc)
    # list.each do |task|

      puts "#{task_id}) #{task_name} (#{task_completed})"
    # end
  end

  def self.delete(name)
    puts "Deleted '#{name}' from your TODO list"
  end

  def self.completed(name)
    puts "Completed '#{name}' from your TODO list"
  end

  def self.display_error
    puts "Error. Input invalid"
  end
end