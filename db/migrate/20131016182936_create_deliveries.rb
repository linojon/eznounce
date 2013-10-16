class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.references :message
      t.string :address_type

      t.timestamps
    end
  end
end
