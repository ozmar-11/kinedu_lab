FactoryBot.define do
  factory :baby do
    sequence :name do |n|
      "Baby #{n}"
    end
    sequence :birthday do |n|
      n.months.ago
    end
    sequence :mother_name do |n|
      "Mother #{n}"
    end
    sequence :father_name do |n|
      "Father #{n}"
    end
    sequence :address do |n|
      "Address #{n}"
    end
    sequence :phone do |n|
      "#{n}"*10
    end
  end
end
