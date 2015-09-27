class ChangeAdvertisementsColumnName < ActiveRecord::Migration
  def change
    rename_column :advertisements, :copy, :body
  end
end
