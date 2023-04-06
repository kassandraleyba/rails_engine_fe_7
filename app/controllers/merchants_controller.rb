class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchants
  end

  def show
    @merchant = MerchantFacade.merchants.find do |merchant|
      merchant.id == params[:id]
    end
    @merchant_items = MerchantFacade.merchant_items(params[:id])
  end
end