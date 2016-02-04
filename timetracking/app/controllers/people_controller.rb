class PeopleController < ApplicationController
	def index
		@people=Person.all
	end

	def show
		@person=Person.find(params[:id])
		@available_projects = @person.projects
	end	

	def new
		@person=Person.new  #el new nomes instancia, no fica a la bbdd, per això hi ha el create.
	end	

	def create
		@person = Person.new person_params  
		if @person.save
			flash[:notice] = "Person succesfully crerated"
			redirect_to person_path(@person)
		else
			flash[:alert] = "Person not created"
			render 'new'
		end		
	end

	def associate_project
			@project = Person.find params[:id]
			@project = Project.find params[:project_id]
			@person.projects << @project
			redirect_to person_path(@person)
	end		
	
private
	def person_params
		params.require(:person).permit(:name, :email) #s'ha de posar en private o ruby tirar un error de seguretat
	end
end
