class Account < ActiveRecord::Base
	belongs_to :budget
	has_many :entry
end
