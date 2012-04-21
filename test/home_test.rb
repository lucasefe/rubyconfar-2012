require_relative './helper'

describe 'home' do

  it "should show me the home" do
    visit "/"
    assert has_content?("hello")
  end
end
