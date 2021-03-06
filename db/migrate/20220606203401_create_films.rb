class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.jsonb :title,	:jsonb, default: {}
      t.jsonb :description,	:jsonb, default: {}
      t.jsonb :slogan,	:jsonb, default: {}
      t.timestamps
    end
  end
end
