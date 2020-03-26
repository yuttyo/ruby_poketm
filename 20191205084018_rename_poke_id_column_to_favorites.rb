class RenamePokeIdColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_column :favorites, :poke_id, :poketm_id
  end
end
