class Rx < ApplicationRecord
    belongs_to :frame
    attributes :OD_SPH, :OD_CYL, :OD_AXIS, :OD_PRISM, :OD_BASE, :OD_ADD, :OS_SPHERE, :OS_CYL, :OS_AXIS, :OS_PRISM, :OS_BASE, :OS_ADD, :frame_id
end
