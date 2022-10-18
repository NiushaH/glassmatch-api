class FrameSerializer
  include FastJsonapi::ObjectSerializer
  has_many :ratings, serializer: RatingSerializer
  attributes :name, :style, :condition, :image_url, :OD_SPH, :OD_CYL, :OD_AXIS, :OD_PRISM, :OD_BASE, :OD_ADD, :OS_SPHERE, :OS_CYL, :OS_AXIS, :OS_PRISM, :OS_BASE, :OS_ADD
  attribute :ratings do |obj|
    RatingSerializer.new(obj.ratings)
  end
end