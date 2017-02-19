require 'rails_helper'

RSpec.describe BadgesUser, type: :model do
  it { is_expected.to belong_to :badge }
  it { is_expected.to belong_to :user }
  it { is_expected.to validate_numericality_of :user_id }
  it { is_expected.to validate_numericality_of :badge_id }
  it { is_expected.to validate_presence_of :user_id }
  it { is_expected.to validate_presence_of :badge_id }
end
