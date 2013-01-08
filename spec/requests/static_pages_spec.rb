require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Mobile App Manager | " }

  describe "Home Page" do
    it "should fetch home page with 200 ok response" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get root_path
      response.status.should be(200)
    end

    it "should have content 'Mobile App Manager'" do
    	visit root_path
    	page.should have_selector('h1', :text => 'Mobile App Manager')
    end

    it "should have the base title" do
    	visit root_path
    	page.should have_selector('title', :text => "Mobile App Manager")
    end

    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title', :text => "| Home")
    end
  end

	
  describe "Help Page" do
    it "should fetch help page with 200 ok response" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get help_path
      response.status.should be(200)
    end

    it "should have content 'Help'" do
    	visit help_path
    	page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right title" do
    	visit help_path
    	page.should have_selector('title', :text => "#{base_title}Help")
    end
  end

  describe "About Page" do
  	 it "should fetch about page with 200 ok response" do
  	 	get about_path
  	 	response.status.should be(200)
  	 end

  	 it "should have content 'About Us'" do
  	 	visit about_path
  	 	page.should have_selector('h1', :text => 'About Us')
  	 end

    it "should have the right title" do
    	visit about_path
    	page.should have_selector('title', :text => "#{base_title}About Us")
    end
  end

  describe "Contact Page" do
    it "should fetch contact page with 200 ok response" do
    	get contact_path
    	response.status.should be(200)
    end

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text => "Contact")
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title', :text => "#{base_title}Contact")
    end
  end
end
