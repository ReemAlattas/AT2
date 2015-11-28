class CreateKpis < ActiveRecord::Migration
  def change
    create_table :kpis do |t|
      t.string :description
      t.string :responsibility
      t.datetime :milestone

      t.timestamps null: false
    end
  end
end
