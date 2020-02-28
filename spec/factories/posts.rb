FactoryBot.define do
  factory :post do
    title { Faker::Artist.name }
    content  { "Doe" }
    # image { fixture_file_upload(Rails.root.join("spec", "fixtures", "image.jpg")) }
  end
end
