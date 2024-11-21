class CreateLanguageAbilities < ActiveRecord::Migration[7.1]
  def change
    create_table :language_abilities do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
