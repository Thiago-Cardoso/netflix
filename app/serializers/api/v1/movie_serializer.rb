class Api::V1::MovieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :description, :episode_number, thumbnail_key, :featured_thumbnail_key, :video_key, :serie_id

  attribute :type do |object|
    'movie'
  end

  attribute :category do |object|
    object.category&.name
  end

  attribute :reviews_count do |object|
    object.reviews.count
  end

  attribute :favorite do |object, params|
    if params.present? && params.has_key?(:user)
      params[:user].favorites.where(favoritable: object).exists?
    end
  end
  attribute ​:thumbnail_url​ ​do​ |object|
    "/thumbnails/​#{object.thumbnail_key}​"
  ​end
  attribute ​:thumbnail_cover_url​ ​do​ |object|
    ​"/thumbnails/​#{object.thumbnail_cover_key}​"
  ​end
  attribute ​:featured_thumbnail_url​ ​do​ |object|
  ​if​ object[​:featured_thumbnail_key​].present?
  ​  "/videos/​#{object.video_key}​"
  ​end
  ​end
end