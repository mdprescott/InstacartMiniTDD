# This will guess the Order class
FactoryBot.define do
  factory :customer do
    name { "Michael" }
    address { "123 Home St" }
    phone_number { 1231231234 }
  end

  factory :driver do
    name { "James" }
    address { "123 Shop ln" }
    phone_number { 4564564567 }
  end

  factory :warehouse do
    name { "Whole Foods" }
    address { "123 Organic Way" }
  end

  factory :item do
    description { "Steak" }
    price { 12.99 }
    looseweight { true }
  end

  factory :order do
  end

  factory :order_item do
    quantity { 1.5 }
  end

end
