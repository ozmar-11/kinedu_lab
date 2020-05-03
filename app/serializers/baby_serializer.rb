class BabySerializer < ApplicationSerializer
  attributes :name, :mother_name, :father_name, :phone, :address

  attribute :age, &:age_in_months
end
