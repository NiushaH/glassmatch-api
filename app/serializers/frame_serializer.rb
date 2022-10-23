class FrameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :style, :condition, :image_url, :ratings
  has_many :ratings, serializer: RatingSerializer
  # attribute :ratings do |obj|
  #   RatingSerializer.new(obj.ratings)
  # end
end