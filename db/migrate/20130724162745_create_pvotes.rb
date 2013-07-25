class CreatePvotes < ActiveRecord::Migration
  def change
    create_table :pvotes do |t|
      t.belongs_to :user
      t.belongs_to :post
    end
  end
end
