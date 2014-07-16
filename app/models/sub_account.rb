class SubAccount < ActiveRecord::Base
  belongs_to :accounts
  has_many :entry
end
