class Emp < ActiveRecord::Base
	attr_accessible :name, :address, :city, :phone
	belongs_to :dept
	validates :name,:presence=>true
end
