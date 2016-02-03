class Entry < ActiveRecord::Base
  belongs_to :project
  validate :hours, presence: true, numericality: true
  validate :minutes, presence: true, numericality: true
  validate :date, presence: true
  validate :project, presence: true
end

/\A[]