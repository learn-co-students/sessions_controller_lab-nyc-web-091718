require 'rails_helper'

describe "login", type:  :feature do

  it "shows the login form on the login page" do
    visit '/login'
    expect(page.has_field?('name')).to eq(true)
  end

  it "shows user his/her name once logged in" do
    visit '/login'
    page.fill_in 'name', with: 'Bob'
    page.click_on('login')
    expect(page.has_text?('Bob')).to eq(true)
  end

  it "shows the logout button once logged in" do
    visit '/login'
    page.fill_in 'name', with: 'Bob'
    page.click_on('login')
    expect(page.has_selector?(:link_or_button, 'logout')).to eq(true)
  end


end

describe "logout", type:  :feature do
    it "logs the user out when the logout button is clicked" do
      visit '/login'
      page.fill_in 'name', with: 'Bob'
      page.click_on('login')
      page.click_on('logout')
      expect(page.has_text?('Bob')).to eq(false)
    end
  end
