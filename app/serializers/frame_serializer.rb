class FrameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :style, :condition, :image_url, :rx_id
end
