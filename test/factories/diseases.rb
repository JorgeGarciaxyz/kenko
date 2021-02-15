FactoryBot.define do
  factory :disease do
    name { "MyString" }
    start_date { "2021-02-09" }
    end_date { "2021-02-09" }
    symptoms { "MyText" }
    notes { "MyText" }
    user { nil }
  end
end
