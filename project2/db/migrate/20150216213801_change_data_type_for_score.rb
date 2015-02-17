class ChangeDataTypeForScore < ActiveRecord::Migration
 def self.up
    change_table :pictures do |t|
      t.change :score, :integer
    end
 end
  def self.down
    change_table :pictures do |t|
      t.change :score, :string
    end
  end
end
