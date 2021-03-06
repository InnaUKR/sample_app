require 'spec_helper'
require 'capybara/dsl'
require 'rails_helper'
require 'capybara'

describe "Static pages" do
let(:base_title) { "Ruby on Rails Tutorial Sample App" }

subject { page }

  describe "Home page" do
  	before { visit root_path}
  	
    it {should have_content ('Sample App') }
      # visit root_path		#'/static_pages/home'
   # it { should have_title (full_title('')) }
    it "should have the base title" do
    	#visit root_path		#'/static_pages/home'
    	expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    it {should_not have_title('| Home')}
    ##it "should not have a custome page title" do
    #visit root_path		#'/static_pages/home'
    ##expect(page).not_to have_title ('| Home')
    ##end
    
  end
  
  describe "Help page" do
	  before { visit help_path }
		
			it {should have_content ('Help')}
			#it {should have_title(full_title(''))}
			
    #it "should have the content 'Help'" do
      #visit help_path		#'/static_pages/help'
      #expect(page).to have_content('Help')
    #end
    it "should have the title 'Help'" do
    	visit help_path		#'/static_pages/help'
    	expect(page).to have_title("#{base_title} | Help")
  end
  end
  
  describe "About page" do
  	before {visit about_path}
  	
  #	it {should have_content('About')}
  #	it {should have_title(full_title(''))}
  
  it "should have the content 'About'" do
  	visit about_path		#'/static_pages/about'
  	expect(page).to have_content('About')
  end
  it "should have the title 'About'" do
  	visit about_path		#'/static_pages/about'
  	expect(page).to have_title("#{base_title} | About Us")
  end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path		#'/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path		#'/static_pages/contact'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end
