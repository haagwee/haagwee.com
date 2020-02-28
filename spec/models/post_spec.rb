require "rails_helper"

RSpec.describe Post, type: :model do
  # Validiations
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:content) }

  # Relations
  it { is_expected.to has_one_attached(:image) }
end
