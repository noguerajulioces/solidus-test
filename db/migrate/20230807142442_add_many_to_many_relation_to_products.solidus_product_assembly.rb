# frozen_string_literal: true

# This migration comes from solidus_product_assembly (originally 20091028152124)
class AddManyToManyRelationToProducts < SolidusSupport::Migration[4.2]
  def self.up
    create_table :assemblies_parts, id: false do |t|
      t.integer "assembly_id", null: false
      t.integer "part_id", null: false
      t.integer "count", null: false, default: 1
    end
  end

  def self.down
    drop_table :assemblies_parts
  end
end
