require_relative '../../app/models/task.rb'
require_relative '../../app/view/view.rb'
# require_relative 'config/application'

class Todo
  def self.add(new_task)
    new_task= Task.create(name: "#{new_task}")
    View.add(new_task.id, new_task.name)
  end

  def self.delete(task_id_to_be_deleted)
    delete_task= Task.find(task_id_to_be_deleted).destroy
    View.delete(delete_task.name)
  end

  def self.complete(task_id_completed)
    completed_task= Task.find_by(id: task_id_completed)
    View.completed(completed_task.name)
    completed_task.update(completed: true)
  end
end

