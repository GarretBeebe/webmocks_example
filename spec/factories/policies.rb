FactoryGirl.define do
  factory :policy do
    policy_number { Faker::Number.number(9) }
    module_number { Faker::Number.number(1) }
    ann_stmt_co { Faker::Number.number(2) }
    issuing_company { Faker::Number.number(3) }
    producer_number { Faker::Number.number(5) }
    aig_database_unique_id do
        last = Case.last
        last.nil? ? 1 : last.id + 1
    end
    aig_compound_key { "#{policy_number}-#{module_number}-#{ann_stmt_co}" }
  end
end
