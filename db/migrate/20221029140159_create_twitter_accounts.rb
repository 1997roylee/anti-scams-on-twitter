# frozen_string_literal: true

class CreateTwitterAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table(:twitter_accounts) do |t|
      t.string(:username, null: false, index: { unique: true }, limit: 256)
      t.string(:name, null: false, limit: 256)
      t.boolean(:is_verified, null: false, default: false)
      t.boolean(:is_scammed, null: false, default: false)

      t.text(:avatar_url, null: false, limit: 512)

      t.timestamps
    end
  end
end
