[system("clear")]
require "rspec"
require "./sinatratodo.rb"



describe Task do
	before :each do
		@nameofclass=Task.new("any content")
    end
  describe "#complete?" do
    it "returns if a task is NOT done" do
      expect(@nameofclass.complete?).to eq(false) 

    end
  end  
  describe "#complete!" do
    it "changes the value to complete" do
      expect(@nameofclass.complete!).to eq(true)

    end  

  end

  describe "#make_incomplete!" do
    it "changes the value to incomplete" do
      expect(@nameofclass.make_incomplete!).to eq(false)

    end

  end

  describe "#update_content!" do
    it "updates the content" do
      expect(@nameofclass.update_content!("new content")).to eq("new content") 
  end
  end

	
end

describe TodoList do
before :each do
    @nameofclass=TodoList.new
    @task=Task.new("texto de test")
    end

   describe "#add_task" do
    it "adds a task to the task list" do
      expect(@nameofclass.add_task(@task)).to eq(@nameofclass.tasks[0].content)



    end

  end

    
  describe "#delete_at" do
    it "deletes a task by its id" do
        @nameofclass.add_task("walk the dog")

        expect(@nameofclass.delete_task(1)).to eq(nil)
    end
    end 
  # describe "#find_task_by_id" do
  #   it "find a task by its id" do
  #     expect(@nameofclass.find_task_by_id(99)

  #   end
  #   end   


 end 