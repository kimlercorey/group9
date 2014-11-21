class CreateJoinTableItemsSymptoms < ActiveRecord::Migration
  def change
    create_join_table :items, :symptoms do |t|
          t.index [:item_id]
          t.index [:symptom_id]
    end
  end
end
