require 'rails_helper'

RSpec.describe "Merchant Show" do
  it "can see a list of items that merchant sells", :vcr do
    VCR.use_cassette("/merchants/merchant_items") do
      visit "/merchants/1/items"

      expect(page).to have_content("Items for Sale")
      expect(page).to have_content("Item Nemo Facere")
    end
  end
end