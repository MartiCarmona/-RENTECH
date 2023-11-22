class DropConsolesAndAudiosTables < ActiveRecord::Migration[7.1]
  def change
    drop_table :consoles
    drop_table :audios
  end
end
