require 'rails_helper'

RSpec.describe Pin, type: :model do
  it { is_expected.to have_many :users }
end
