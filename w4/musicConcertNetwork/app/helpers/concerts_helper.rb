module ConcertsHelper
	#@concerts_this_month = Concert.where('date BETWEEN ? AND ?', DateTime.now.beginning_of_month, DateTime.now.end_of_month)
end
