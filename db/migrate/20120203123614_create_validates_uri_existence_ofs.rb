class CreateValidatesUriExistenceOfs < ActiveRecord::Migration
  def self.up
    create_table :validates_uri_existence_ofs do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :validates_uri_existence_ofs
  end
end
