require 'spec_helper'
 
describe "Recipes" do
	subject { page }

  describe "Home page" do
  	before { visit root_path }
  	
    it { should have_content("Find/Add recipe") }
   	it { should have_selector("title", text: 'home') }

  end

  describe "Add recipe page" do
  	before { visit new_path }

  	it { should have_selector("h2", text: "Add your recipe") }
  end
end
