class RatingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :score, :comments, :frame_id
end
