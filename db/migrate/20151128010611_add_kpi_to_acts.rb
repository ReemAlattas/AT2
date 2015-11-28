class AddKpiToActs < ActiveRecord::Migration
  def change
    add_reference :acts, :kpi, index: true, foreign_key: true
  end
end
