require 'spec_helper'
describe 'home page' do
  it "displays app name" do
    visit '/'
    expect(page).to have_selector('h1', text: 'EZnounce')
  end
end
