
require "yaml/store"


class Task
    attr_reader :content, :id
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = false
        @created_at = Time.now.asctime
    end
    def created_at
        @created_at = Time.now.asctime
    end
    def complete?
        @complete = false
        @complete
    end
    def completed!
        @complete = true
        @complete
    end
    def make_incomplete!
        @complete = false
        @complete
    end
    def update_content!(update)
        @content = update
        @content
    end
end
class TodoList
    attr_reader :tasks, :user
    def initialize(user)
        @todo_store = YAML::Store.new("../public/taskStorage.yml")
        @tasks = []
        @user = user
    end
    def save
      @todo_store.transaction do 
          @todo_store[@user] = @tasks
      end
    end
    def load_tasks
        @todo_store.transaction do
         @tasks = @todo_store[@user]
        end
    end     



    def add_task(task)
        @tasks << task
        @tasks
    end
    def delete_task(id_num)
        @tasks.delete_if {|n| n.id == id_num}
    end
    def find_task_by_id(id_num)
        @tasks.each{|t| id_num == t.id ? id : nil}
        return nil
    end
    def sort
        @tasks.sort { | t1, t2 | t1.created_at <=> t2.created_at }
    end
    def create_user
        @user = @user
    end
end

# todo_list = TodoList.new("Josh")
# task = Task.new("Walk the dog")
# task2 = Task.new("Buy the milk")
# task3 = Task.new("Make my todo list into a web app")
# todo_list.add_task task
# todo_list.add_task task2
# todo_list.add_task task3
# todo_list.save

# todo_list = TodoList.new("Josh")
# todo_list.load_tasks
# puts todo_list.tasks