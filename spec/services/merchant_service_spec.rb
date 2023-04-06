require 'rails_helper'

RSpec.describe MerchantService do
  context "instance methods" do
    context "#all_merchants" do
      it "returns all merchants data", :vcr do
        VCR.use_cassette("all_merchants") do
          merchant_data = MerchantService.new.all_merchants
        
          expect(merchant_data).to be_a(Hash)
          expect(merchant_data[:data]).to be_a(Array)
          expect(merchant_data[:data].first).to be_a(Hash)
          expect(merchant_data[:data].first[:attributes]).to be_a(Hash)
        end
      end

      it "returns merchant items data", :vcr do
        VCR.use_cassette("merchant_items") do
          merchant_data = MerchantService.new.merchant_items(1)
        
          expect(merchant_data).to be_a(Hash)
          expect(merchant_data[:data]).to be_a(Array)
          expect(merchant_data[:data].first).to be_a(Hash)
          expect(merchant_data[:data].first[:attributes]).to be_a(Hash)
        end
      end
    end
  end
end