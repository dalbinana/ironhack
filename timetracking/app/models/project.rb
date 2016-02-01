class Project < ActiveRecord::Base
	# set_table_name 'projects'
	def self.iron_find (id) #es posa el self pq es un class method, vol dir que el crides i no cal instanciar-lo
		where(id: id).first
	end	
end
