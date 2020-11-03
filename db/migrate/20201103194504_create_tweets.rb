class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.integer    :prefectre_id,   null: false
      t.integer    :level_id,       null: false
      t.text       :detail,         null: false
      t.references :user,           null: false, foreign_key: true
      t.string     :title,          null: false
      t.string     :city,           null: false
      t.string     :court,          null: false
      t.string     :recruitment,    null: false
      t.datetime   :datetime,       null: false
      t.timestamps
    end
  end
end
