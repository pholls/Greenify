require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_many :badges }
  it { is_expected.to have_many :badges_users }

  it '' do
    auth = { provider: "google",
             uid: "12345678910",
             info: { 
                    email: "jesse@mountainmantechnologies.com",
                    first_name: "Jesse",
                    last_name: "Spevack" 
                    },
             credentials: { 
                           token: "abcdefg12345", 
                           refresh_token: "12345abcdefg",
                           expires_at: DateTime.now 
                           } 
           }
    User.update_or_create(auth)
    user = User.first
    expect(user.email).to eq "jesse@mountainmantechnologies.com"
  end
end

