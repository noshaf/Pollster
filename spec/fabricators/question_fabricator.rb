Fabricator(:question) do
  prompt { sequence { Faker::Lorem.sentence } }
end
