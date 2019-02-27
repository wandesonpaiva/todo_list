FactoryBot.define do
  factory :task do
    title { 'Teste teste' }
    description { 'some description of some task' }
    due_date { '2019-03-23'}
  end
end