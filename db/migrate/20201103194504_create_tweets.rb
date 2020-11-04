class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.integer    :toprank_id,       null: false
      t.integer    :jgrank_id,        null: false
      t.integer    :midrank_id,       null: false
      t.integer    :suprank_id,       null: false
      t.integer    :botrank_id,       null: false
      t.text       :detail,            null: false
      t.string     :teamname,           null: false
      t.references :user,              null: false, foreign_key: true
      t.integer    :weekday_id,        null: false
      t.time       :starttime,         null: false
      t.time       :endtime,           null: false

      t.timestamps
    end
  end
end
