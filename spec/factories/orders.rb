FactoryBot.define do
  factory :order do
    start_time { 3.hours.from_now }
  end
end
