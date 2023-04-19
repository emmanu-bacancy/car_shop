class CompanyVehicle < ApplicationRecord
  belongs_to :company
  belongs_to :vehicle
end
