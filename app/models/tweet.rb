class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefectre
  belongs_to_active_hash :level
  has_one_attached :image
  belongs_to :user


end
