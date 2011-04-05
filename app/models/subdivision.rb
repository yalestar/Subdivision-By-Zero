class Subdivision < ActiveRecord::Base
  named_scope :random, :order=>'RANDOM()', :limit=>1
end
