class CreateCvotes < ActiveRecord::Migration
  def change
    create_table :cvotes do |t|
      t.belongs_to :user
      t.belongs_to :comment
    end
  end
end
