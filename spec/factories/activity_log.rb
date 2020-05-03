FactoryBot.define do
  factory :activity_log do
    association :activity
    association :assistant
    association :baby
    sequence :start_time do |n|
      n.minutes.ago
    end
    sequence :stop_time do |n|
      n.minutes.ago
    end
    sequence :comments do |n|
      "Comment #{n}"
    end
  end
end
