class Project < ActiveRecord::Base
	# set_table_name 'projects'
	def self.iron_find (id) #es posa el self pq es un class method, vol dir que el crides i no cal instanciar-lo
		where(id: id).first
	end	
	def self.clean_old
		date_to_delete = Date.current - 1.week
		projects_to_delete = Project.where("created_at > ?", date_to_delete)
		projects_to_delete.destroy

	end	
end
