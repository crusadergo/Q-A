class RenameTableEditsToCorrections < ActiveRecord::Migration
  def change
    rename_table :edits, :corrections
  end
end
