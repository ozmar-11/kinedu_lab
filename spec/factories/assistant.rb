FactoryBot.define do
  factory :assistant do
    sequence :name do |n|
      "Assistance #{n}"
    end
    sequence :address do |n|
      "Address #{n}"
    end
    sequence :phone do |n|
      "#{n}"*10
    end
    sequence :group do |n|
      n
    end
  end
end
