class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefectre
  belongs_to_active_hash :level

  with_options presence: true do
    validates :title
    validates :prefectre_id
    validates :level_id
    validates :city
    validates :court
    validates :datetime
    validates :recruitment
    validates :detail
  end
end
