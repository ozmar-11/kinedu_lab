FactoryBot.define do
  factory :activity  do
    sequence :name do |n|
      "Activity #{n}"
    end
    sequence :description do |n|
      "Description #{n}"
    end
  end
end
