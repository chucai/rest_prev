# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  
  factory :interface do
    url "/api/get_token.json"
    method "get"
    params "id"
    status  200
    returns '{"result":"ok"}'
  end

end
