FactoryGirl.define do
  factory :vehicle do
    make { ["BMW","Audi","Toyota","Chevy","Ford","Dodge","Lincoln","Buick","Honda","Nissan"].sample }
    model { ["Prius","Camry","Corolla","Camero","Silverado","Malibu","Mustang","F150","Focus","Fiesta",
             "Ram","Challenger","Charger","Durango","Enclave","Regal","LaCrosse","Verano","Encore",
             "Riveria","Accord","Civic","CR-V","Odyssey","Rogue","Juke","Cube","Pathfiner","Versa","Altima"].sample }
    year { (1970...Time.now.year).to_a.sample }
    color { ["Red", "Green", "Blue", "Yellow", "Orange", "Black", "White", "Brown", "Purple", "Tan", "Pearl", "Grey"].sample }
    vin { Faker::Base::regexify(/^[A-Z0-9]{12}\d{5}$/) }
    license_no { Faker::Base::regexify(/^[A-Z0-9]{6}$/) }
  end
end
