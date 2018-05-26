class Movie < ApplicationRecord
  belongs_to :serie, optional: true
  belongs_to :category, optional: true
  has_many :reviews, as: :reviewable
  has_many :players, dependent: :destroy
  has_one :watched_serie, class_name: "Serie", foreign_key: "last_watched_episode_id", dependent: :nullify
end
