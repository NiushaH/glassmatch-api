class Frame < ApplicationRecord
    has_many :ratings, :dependent => :destroy
end
