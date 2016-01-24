require "pry"
class Task
    attr_reader :content, :id, :new_todo
    @@current_id = 1
    # tasks_array=[0]
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @is_complete = false
        @created_at = Time.now
        @updated_at = nil
        

        # tasks_array[@id]<< @is_complete     
     end

    def complete?
    	@is_complete
    end

    def complete!
    	@is_complete = true
    	@is_complete
    end	

    def make_incomplete!
    @is_complete=false
    @is_complete
    end

    def update_content!(new_content)
    @conten	= new_content
    @updated_at = Time.now
    new_content
	end
end
class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end
    def add_task(task)
    	 # binding.pry
    	# minitask=[]
    	# minitask.push(task.id,task)
    	# @tasks << minitask
    	# @tasks[-1][1].content
    	@tasks << task
    	#@tasks[0].content
    	# @tasks.empty?
    	
    	# test_word=@tasks[-1].content
    	# test_word.to_str
    	
    end
    # def add_task(id,new_task)
    	
    # 	@tasks << [id,new_task]
    # 	return tasks[-1][-1]
    # end	
    def delete_task(id)
    	index_to_delete=@tasks.find_index {|item| item.id == id}
    	index_to_delete_i=index_to_delete.to_i
    	@tasks.delete_at(index_to_delete_i)
    	return @tasks[id]
    	

    	
    	

    	# tasks_index=@tasks.index(id)

    	# binding.pry
    	# @tasks.delete_at(tasks_index.to_i)
    	
    # 	return @tasks.index(tasks_index.to_i)
    end	
    		


end
system("clear")
todo=TodoList.new
contenido1=Task.new("una prueba de texto")
todo.add_task(contenido1)
todo.delete_task(999)
