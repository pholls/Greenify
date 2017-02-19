require 'rails_helper'

RSpec.describe Pin, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of :user_id }
    it { is_expected.to belong_to :user }
    it { is_expected.to validate_presence_of :lat }
    it { is_expected.to validate_presence_of :lng }
    it { is_expected.to validate_presence_of :category }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_inclusion_of(:category).in_array(['bio waste', 'natural disaster', 'vandalism', 'trash', 'chemical spill']) }
  end
end
