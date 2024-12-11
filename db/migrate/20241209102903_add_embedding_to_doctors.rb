class AddEmbeddingToDoctors < ActiveRecord::Migration[7.1]
  def change
    add_column :doctors, :embedding, :vector, limit: 1536 unless column_exists?(:doctors, :embedding)
  end
end
