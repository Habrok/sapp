require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    it "should have the content 'Sapp'" do
      visit '/static_pages/home'
      expect(page).to have_content('Home')
    end

    it "should have the right title" do
	  visit '/static_pages/home'
	  expect(page).to have_title("Sapp | Home")
  	end
  end

  describe "Help page" do
    it "must have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
	  visit '/static_pages/help'
	  expect(page).to have_title("Sapp | Help")
  	end
  end

  describe "About page" do
    it "must have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
	  visit '/static_pages/about'
	  expect(page).to have_title("Sapp | About")
  	end
  end

  describe "Donate page" do
    it "must have the content 'dollar sign'" do
      visit '/static_pages/donate'
      expect(page).to have_content('$')
    end

    it "should have the right title" do
	  visit '/static_pages/donate'
	  expect(page).to have_title("Sapp | Donate")
  	end
  end
  
end
