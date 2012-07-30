require 'spec_helper'

describe lakes do

  let(:user) { FactoryGirl.create(:user) }
 
before { @lake = user.lake.build(content: "Lorem ipsum") }

  subject { @lakes }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @lakes.user_id = nil }
    it { should_not be_valid }
  end
end