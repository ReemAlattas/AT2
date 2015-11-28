class AddPlanToKpis < ActiveRecord::Migration
  def change
    add_reference :kpis, :plan, index: true, foreign_key: true
  end
end
