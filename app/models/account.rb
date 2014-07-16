class Account < ActiveRecord::Base
	belongs_to :budget
	has_many :subaccount
end
