class MerchantFacade
  def self.merchants
    json = MerchantService.new.all_merchants

    @merchants = json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
    binding.pry
  end
end