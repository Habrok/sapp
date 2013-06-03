require 'spec_helper'

describe "StaticPages" do

  let(:base_title) {"Sapp"}
  
  describe "Home page" do
    it "should have the content 'Sapp'" do
      visit '/static_pages/home'
      expect(page).to have_content('Home')
    end

    it "should have the right title" do
	  visit '/static_pages/home'
	  expect(page).to have_title("#{base_title} | Home")
  	end
  end

  describe "Help page" do
    it "must have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
	  visit '/static_pages/help'
	  expect(page).to have_title("#{base_title} | Help")
  	end
  end

  describe "About page" do
    it "must have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
	  visit '/static_pages/about'
	  expect(page).to have_title("#{base_title} | About")
  	end
  end

  describe "Donate page" do
    it "must have the content 'dollar sign'" do
      visit '/static_pages/donate'
      expect(page).to have_content('$')
    end

    it "should have the right title" do
	  visit '/static_pages/donate'
	  expect(page).to have_title("#{base_title} | Donate")
  	end
  end
  
  describe "Contact page" do
    it "must have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the right title" do
    visit '/static_pages/contact'
    expect(page).to have_title("#{base_title} | Contact")
    end
  end  
end
