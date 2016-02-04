class Project < ActiveRecord::Base
has_many :entries
validates :name, uniqueness: true, presence: true, length: {maximum: 30}, format: {with: /\A[^\s][a-zA-Z0-9\s]+\z/}
# def self.iron_find(id)


  #   where(id: id).first
  # end




end
