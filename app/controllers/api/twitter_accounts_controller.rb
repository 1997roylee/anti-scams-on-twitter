# frozen_string_literal: true

module Api
  class TwitterAccountsController < ApplicationController
    ## create a new twitter account
    ## post /api/twitter_accounts
    ## post /api/twitter_accounts.json
    def create
      @twitter_account = TwitterAccount.new(create_twitter_accounts_params)
      if @twitter_account.save
        render json: @twitter_account, status: :created
      else
        render json: @twitter_account.errors, status: :unprocessable_entity
      end
    end

    private

    def create_twitter_accounts_params
      params.permit(
        :username,
        :name
      )
    end
  end
end
