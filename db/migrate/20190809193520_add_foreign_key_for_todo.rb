# frozen_string_literal: true

class AddForeignKeyForTodo < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :todos, :users
  end
end
