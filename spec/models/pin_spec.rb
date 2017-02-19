require 'rails_helper'

RSpec.describe Pin, type: :model do
  describe "validations" do
      it { is_expected.to validate_presence_of :user_id }
  end
end
