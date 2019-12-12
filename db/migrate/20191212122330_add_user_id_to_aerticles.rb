# frozen_string_literal: true

class AddUserIdToAerticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :user_id, :integer
  end
end
