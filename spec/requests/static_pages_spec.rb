require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
    it "should fetch home page with 200 ok response" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_home_path
      response.status.should be(200)
    end

    it "should have content 'Mobile App Manager'" do
    	visit '/static_pages/home'
    	page.should have_selector('h1', :text => 'Mobile App Manager')
    end

    it "should have the right title" do
    	visit '/static_pages/home'
    	page.should have_selector('title', :text => "Home")
    end
  end

	
  describe "Help Page" do
    it "should fetch help page with 200 ok response" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_help_path
      response.status.should be(200)
    end

    it "should have content 'Help'" do
    	visit '/static_pages/help'
    	page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right title" do
    	visit '/static_pages/help'
    	page.should have_selector('title', :text => "Help")
    end
  end

  describe "About Page" do
  	 it "should fetch about page with 200 ok response" do
  	 	get static_pages_about_path
  	 	response.status.should be(200)
  	 end

  	 it "should have content 'About Us'" do
  	 	visit '/static_pages/about'
  	 	page.should have_selector('h1', :text => 'About Us')
  	 end

    it "should have the right title" do
    	visit '/static_pages/about'
    	page.should have_selector('title', :text => "About Us")
    end
  end
end
