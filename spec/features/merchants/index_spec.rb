require 'rails_helper'

RSpec.describe "Merchant Index" do
  it "can see a list of merchants by name and link to show page", :vcr do
    VCR.use_cassette("merchants/all_merchants") do
      visit "/merchants"

      expect(page).to have_content("Schroeder-Jerde")
    
      click_on "Schroeder-Jerde"

      expect(current_path).to eq("/merchants/1/items")
    end
  end
end