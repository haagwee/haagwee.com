FactoryBot.define do
  factory :project do
    title { Faker::App.name }
    content  { "Doe" }
    # image { fixture_file_upload(Rails.root.join("spec", "fixtures", "image.jpg")) }
  end
end
