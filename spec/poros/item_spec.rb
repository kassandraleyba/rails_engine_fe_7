require 'rails_helper'

RSpec.describe Item do
  it "exists" do
    attrs = {attributes: {
      name: "Pencil",
      merchant_id: 1
      }
    }

    item = Item.new(attrs)

    expect(item).to be_an(Item)
    expect(item.name).to eq("Pencil")
    expect(item.merchant_id).to eq(1)
  end
end