class RatingSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :frame, serializer: FrameSerializer
  attributes :score, :comments, :frame_id
end
