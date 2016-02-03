class Project < ActiveRecord::Base
has_many :entries
validates :name, presence: true, uniqueness: true, length: {maximum: 30}, format: {with: [A-Za-z0-9 ]}

  # def self.iron_find(id)
  #   where(id: id).first
  # end

  def total_hours_in_month(month = Date.today.month, year = Date.today.year)
 		start_date = Date.new(year, month)
 		end_date = Date.new(year, month).end_of_month
 		entries = self.entries.where("project_id = ? AND created_at >= ? AND created_at <= ?", self.id, start_date, end_date)
 		entries.reduce(0) do | sum , entry |
 			sum += entry.hours + entry.minutes.to_f/60
 		end
 	end


end
