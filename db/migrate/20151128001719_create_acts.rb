class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :desc
      t.string :target

      t.timestamps null: false
    end
  end
end
