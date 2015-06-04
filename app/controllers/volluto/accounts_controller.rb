require_dependency "volluto/application_controller"

module Volluto
  class AccountsController < ApplicationController

    def new
      @account = Volluto::Account.new
    end

    def create
      account = Volluto::Account.create(account_params)
      flash[:succes] = "Your account has been successfully created."
      redirect_to volluto.root_url
    end

    private

    def account_params
      params.require(:account).permit(:name)
    end
  end
end
