FactoryBot.define do
  factory :comment do
    commenter { "John Doe" }
    body { "I found this body of interesting text... interesting" }
    status { "public" }
    article
  end
end