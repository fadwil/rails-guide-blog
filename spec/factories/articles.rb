FactoryBot.define do
  factory :article do
    title { "Interesting Stuff" }
    body { "A body of interesting text" }
    status { "public" }
  end
end