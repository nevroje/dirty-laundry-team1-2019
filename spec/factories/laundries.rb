FactoryBot.define do
  factory :laundry do
    schedule { IceCube::Schedule.new }
    capacity { 1 }
  end
end
