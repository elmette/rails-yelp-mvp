# frozen_string_literal: true

class ChangePhoneNumberToString < ActiveRecord::Migration[7.0]
  def change
    change_column :restaurants, :phone_number, :string
  end
end
