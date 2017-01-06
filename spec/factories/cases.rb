FactoryGirl.define do
  factory :case do
    branch_id { Faker::Number.number(3) }
    case_number { Faker::Number.number(6) }
    policy_number { Faker::Number.number(7) }
    receipt_date { Faker::Date.backward(365) }
    handling_office_id { Faker::Number.number(3) }
    module_number { Faker::Number.number(1) }
    ann_stmt_co { Faker::Number.number(2) }
    aig_database_unique_id do
        last = Case.last
        last.nil? ? 1 : last.id + 1
    end
    aig_policy_compound_key { "#{policy_number}-#{module_number}-#{ann_stmt_co}" }
    aig_compound_key { "#{branch_id}-#{case_number}" }
  end
end
