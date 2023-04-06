class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchants
  end

  def show

  end
end