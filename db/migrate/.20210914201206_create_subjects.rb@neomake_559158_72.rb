# frozen_string_literal: true

# class Create Subjects
class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string   :name
      t.integer  :position
      t.boolean  :visible

      t.timestamps
    end
  end
end
