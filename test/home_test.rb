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

describe 'proposals' do

  it "should display the home" do
    visit "/en"
    assert has_content?("Proposals")
  end

  it "should allow sending of proposals" do
    visit "/en"
    fill_in 'proposal[author_name]', with: "joe smith"
    fill_in 'proposal[author_email]', with: "some@email.com"
    fill_in 'proposal[author_twitter]', with: "@jow45565"
    fill_in 'proposal[title]', with: "Stuff"
    fill_in 'proposal[abstract]', with: "stuffff"
    click_button "Send proposal"
    assert  has_content?("Thank you!")
    assert "some@email.com", Proposal.order("id ASC").last.author_email
  end
end
