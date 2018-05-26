class Serie < ApplicationRecord
  belongs_to :category
  has_many :reviews, as: :reviewable
  has_many :episodes, ->{ order(:episode_number) }, class_name: "Movie", dependent: :destroy
  belongs_to :last_watched_episode, class_name: "Movie", optional: true
end
