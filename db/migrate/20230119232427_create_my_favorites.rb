# frozen_string_literal: true

class CreateMyFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :my_favorites do |t|
      t.references :user, null: false, foreign_key: true
      t.string :joke_id

      t.timestamps
    end
  end
end
