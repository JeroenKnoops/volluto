require_dependency "volluto/application_controller"

module Volluto
  class AccountsController < ApplicationController

    def new
      @account = Volluto::Account.new
      @account.build_owner
    end

    def create
      account = Volluto::Account.create(account_params)
      env["warden"].set_user(account.owner, scope: :user)
      env["warden"].set_user(account, scope: :account)

      flash[:succes] = "Your account has been successfully created."
      redirect_to volluto.root_url
    end

    private

    def account_params
      params.require(:account).permit(:name, {owner_attributes: [:email, :password, :password_confirmation]})
    end
  end
end
