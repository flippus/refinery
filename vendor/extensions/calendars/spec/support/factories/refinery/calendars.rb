
FactoryGirl.define do
  factory :calendar, :class => Refinery::Calendars::Calendar do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

