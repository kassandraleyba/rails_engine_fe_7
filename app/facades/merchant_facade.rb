class MerchantFacade
  def self.merchants
    json = MerchantService.new.all_merchants

    @merchants = json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.merchant_items(merchant_id)
    json = MerchantService.new.merchant_items(merchant_id)
    @merchant_items = json[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end