class FrameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :style, :condition, :image_url,  :OD_SPH, :OD_CYL, :OD_AXIS, :OD_PRISM, :OD_BASE, :OD_ADD, :OS_SPHERE, :OS_CYL, :OS_AXIS, :OS_PRISM, :OS_BASE, :OS_ADD
end
