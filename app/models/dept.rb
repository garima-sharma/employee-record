class Dept < ActiveRecord::Base
	attr_accessible :deptName, :managerName
	has_many :emps
	validates :deptName, :managerName, :presence=>true
end
