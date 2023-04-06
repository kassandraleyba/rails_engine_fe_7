require 'rails_helper'

RSpec.describe Merchant do
  it "exists" do
    attrs = { attributes: {
      name: "Schroeder-Jerde"
      }
    }

    merchant = Merchant.new(attrs)
  
    expect(merchant).to be_a(Merchant)
    expect(merchant.name).to eq("Schroeder-Jerde")
  end
end