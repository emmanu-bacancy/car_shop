class Company < ApplicationRecord
	validates :name, presence: true, uniqueness: true

	has_many :company_vehicles
	has_many :vehicles, through: :company_vehicles

	has_many :two_wheelers, -> { where(type: 'TwoWheeler') }, through: :company_vehicles, source: :vehicle
	has_many :four_wheelers, -> { where(type: 'FourWheeler') }, through: :company_vehicles, source: :vehicle

	def method_missing(method_name,*args, &block)
		method_name.to_s+" does not defined"
	end

	def self.create_certificate_method(certification_name)
		define_method(certification_name) do |args|
			"Company #{name} is certified with #{certification_name}"
		end
	end
end
