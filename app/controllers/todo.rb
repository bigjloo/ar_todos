
# require_relative 'config/application'

class Todo

  def self.list
    list = Task.all.order(completed: :asc)
    list.each do |task|
      View.display_list(task.id, task.name, task.completed?)
      # puts "#{task.id}) #{task.name} (#{task.completed?})"
    end
  end

  def self.add(new_task)
    new_task= Task.create(name: new_task)
    View.display_add_result(new_task.id, new_task.name)
  end

  def self.delete(task_id_to_be_deleted)
    task= Task.find_by(id: task_id_to_be_deleted.to_i)
    if task.nil?
      View.display_error
    else
      task.destroy
      View.delete(task.name)
    end
  end

  def self.complete(task_id_completed)
    completed_task= Task.find(task_id_completed)
    completed_task.update(completed: true)
    View.completed(completed_task.name)
  end
end

