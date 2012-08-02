Fabricator(:poll) do
  name { Faker::Lorem.sentence }
  questions(:count => 3) { |attrs, index| Fabricate(:question) }
end


