class RatingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :score, :comments, :frame
  belongs_to :frame, serializer: FrameSerializer
end
