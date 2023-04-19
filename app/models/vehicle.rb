class Vehicle < ApplicationRecord
	COMMON_VEHICLES = %i[pulsar zen indica]
	validates :name, presence: true, uniqueness: true

	has_many :company_vehicles
	has_many :companies, through: :company_vehicles

	after_create :create_self_check_method

	COMMON_VEHICLES.each do |method_name|
	    define_method "#{method_name}?" do
	      name == method_name
	    end
  	end
end
