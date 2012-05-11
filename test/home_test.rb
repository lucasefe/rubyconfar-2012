require_relative './helper'

describe 'home' do

  it "should display the home" do
    visit "/"
    assert has_content?("RubyConf Argentina")
  end

  it "should allow an anonymous user to request to be in the loop!" do
    visit "/"
    fill_in 'subscriber[email]', with: "some@email.com"
    click_button "GO"
    assert  has_content?("We'll keep you posted")
    assert "some@email.com", Subscriber.order("id ASC").last.email
    # not sending email at this moment
    # assert_equal 1, Malone.deliveries.size
  end
end
